import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/medical_records/model/medical_reocrds_model.dart';

abstract class IMedicalRecordsRepo {
  Future<List<XFile>> selectedMedicalRecords();
  Future<Either<MainFailure, List<String>>> uploadMedicalRecords(
      List<XFile> imageFileList);
  Future<Either<MainFailure, List<String>>> updateMedicalRecords(
      List<String> imageUrlList);
  Future<Either<MainFailure, MedicalRecordModel>> getMedicalRecords();
}
