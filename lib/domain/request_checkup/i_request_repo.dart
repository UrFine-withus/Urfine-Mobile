import 'package:dartz/dartz.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/request_checkup/model/request_model.dart';

abstract class IRequestRepo {
  Future<Either<MainFailure,void>> checkupRequest(RequestModel requestModel);

}