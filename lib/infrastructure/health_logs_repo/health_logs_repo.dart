import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/health_logs/i_health_logs_repo.dart';
import 'package:urfine/domain/health_logs/models/health_logs_model.dart';
import 'package:urfine/domain/health_logs/models/logs_date_model.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';

@LazySingleton(as: IHealthLogsRepo)
class HealthLogsRepo extends IHealthLogsRepo {
  @override
  Future<Either<MainFailure, LogsDateModel>> fetchDates() async {
    final uid = getIt<UserDataModel>().uid;
    try {
      final response = await Dio(BaseOptions())
          .get("$baseUrl/historylogs/dates?userId=$uid");
      if (response.statusCode == 200) {
        return Right(LogsDateModel.fromJson(response.data));
      } else {
        return const Left(MainFailure.serverFailure());
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

  @override
  Future<Either<MainFailure, HealthLogsModel>> getHealthLogs(
      String date) async {
    final uid = getIt<UserDataModel>().uid;
    try {
      final response = await Dio(BaseOptions())
          .get("$baseUrl/historylogs/user?userId=$uid&date=$date");
      if (response.statusCode == 200) {
        return Right(HealthLogsModel.fromJson(response.data));
      } else {
        return const Left(MainFailure.serverFailure());
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
