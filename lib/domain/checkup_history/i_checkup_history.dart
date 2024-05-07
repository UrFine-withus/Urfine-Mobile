import 'package:dartz/dartz.dart';
import 'package:urfine/domain/checkup_history/model/checkup_history_model.dart';
import 'package:urfine/domain/failure/failure.dart';

abstract class ICheckupHistory {
  Future<Either<MainFailure, CheckupHistoryModel>> getCheckupHistory();
}
