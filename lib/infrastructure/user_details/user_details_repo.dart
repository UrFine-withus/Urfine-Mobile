import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/user_details/i_user_details_repo.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';

@LazySingleton(as: IUserDetailsRepo)
class UserDetailsRepo extends IUserDetailsRepo {
  @override
  Future<Either<MainFailure, void>> addUser(AddUserModel model) async {
    try {
      final respose = await Dio(BaseOptions())
          .post('$baseUrl/userinfo', data: model.toJson());
      if (respose.statusCode == 200) {
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
}
