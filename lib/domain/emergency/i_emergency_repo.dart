import 'package:dartz/dartz.dart';
import 'package:urfine/domain/emergency/model/emergency_model.dart';
import 'package:urfine/domain/failure/failure.dart';

abstract class IEmergencyRepo {
  Future<Either<MainFailure, EmergencyModel>> getEmergencyContact(
    EmergencyContactType type,
  );
}
