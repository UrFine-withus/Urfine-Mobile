import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/emergency/i_emergency_repo.dart';
import 'package:urfine/domain/emergency/model/emergency_model.dart';
import 'package:urfine/domain/failure/failure.dart';

@LazySingleton(as: IEmergencyRepo)
class EmergencyRepo extends IEmergencyRepo {
  @override
  Future<Either<MainFailure, EmergencyModel>> getEmergencyContact(
      EmergencyContactType type) async {
    try {
      final response = await Dio(BaseOptions())
          .get("$baseUrl/emergencyinfo?profile=${type.name.toLowerCase()}");
      if (response.statusCode == 200) {
        final data = response.data;
        final emergency = EmergencyModel.fromJson(data);
        return right(emergency);
      } else {
        return left(const MainFailure.serverFailure());
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
