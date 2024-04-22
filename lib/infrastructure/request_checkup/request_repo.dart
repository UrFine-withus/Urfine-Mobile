import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/request_checkup/i_request_repo.dart';
import 'package:urfine/domain/dietry_plan/model/message_db_model.dart';
import 'package:urfine/domain/request_checkup/model/request_model.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';

@LazySingleton(as: IRequestRepo)
class RequestRepo extends IRequestRepo {
  @override
  Future<Either<MainFailure, void>> checkupRequest(
      RequestModel requestModel) async {
    final uid = getIt<UserDataModel>().uid;
    try {
      final response = await Dio(BaseOptions()).post(
        "$baseUrl/checkups?userId=$uid",
        data: requestModel.toJson(),
      );
      if (response.statusCode == 200) {
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
