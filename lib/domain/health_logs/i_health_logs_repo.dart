import 'package:dartz/dartz.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/health_logs/models/health_logs_model.dart';
import 'package:urfine/domain/health_logs/models/logs_date_model.dart';

abstract class IHealthLogsRepo {
  Future<Either<MainFailure, HealthLogsModel>> getHealthLogs(String date);
  Future<Either<MainFailure, LogsDateModel>> fetchDates();
}
