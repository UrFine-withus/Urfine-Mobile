import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';
import 'package:urfine/domain/user_details/i_user_details_repo.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

@LazySingleton(as: IUserDetailsRepo)
class UserDetailsRepo extends IUserDetailsRepo {
  @override
  Future<Either<MainFailure, void>> addUser(AddUserModel model) async {
    try {
      final respose = await Dio(BaseOptions())
          .post('$baseUrl/userinfo', data: model.toJson());
      if (respose.statusCode == 200) {
        getIt.get<UserDataModel>().name = model.name;
        return right(null);
      } else {
        return left(MainFailure.serverFailure());
      }
    } catch (e) {
      if (e is DioException && e.response?.statusCode == 400) {
        return left(const MainFailure.otherFailure());
      } else if (e is DioException && e.response?.statusCode == 500 ||
          e is DioException && e.response?.statusCode == 501) {
        return left(const MainFailure.serverFailure());
      } else {
        return left(const MainFailure.clientFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, AddUserModel>> getUserDetails() async {
    final uid = getIt.get<UserDataModel>().uid;
    try {
      final response =
          await Dio(BaseOptions()).get('$baseUrl/userinfo?userId=$uid');
      if (response.statusCode == 200) {
        return right(AddUserModel.fromJson(response.data["userInfo"][0]));
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException && e.response?.statusCode == 400) {
        return left(const MainFailure.otherFailure());
      } else if (e is DioException && e.response?.statusCode == 500 ||
          e is DioException && e.response?.statusCode == 501) {
        return left(const MainFailure.serverFailure());
      } else {
        Connectivity connectivity = Connectivity();
        final result = await connectivity.checkConnectivity();
        log(result.toString());
        if (result.last == ConnectivityResult.none) {
          return left(const MainFailure.noInternet());
        }
        return left(const MainFailure.clientFailure());
      }
    }
  }
}
