import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/checkup_history/i_checkup_history.dart';
import 'package:urfine/domain/checkup_history/model/checkup_history_model.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';

@LazySingleton(as: ICheckupHistory)
class CheckupHistoryRepo extends ICheckupHistory {
  @override
  Future<Either<MainFailure, CheckupHistoryModel>> getCheckupHistory() async {
    final uid = getIt.get<UserDataModel>().uid;
    try {
      final respose =
          await Dio(BaseOptions()).get("$baseUrl/checkups/result?userId=$uid");

      if (respose.statusCode == 200) {
        log(CheckupHistoryModel.fromJson(respose.data)
            .checkups
            .length
            .toString());
        return Right(CheckupHistoryModel.fromJson(respose.data));
      } else {
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
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
