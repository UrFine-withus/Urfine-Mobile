import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/core/base_url.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/medical_records/i_medical_records_repo.dart';
import 'package:urfine/domain/medical_records/model/medical_reocrds_model.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';

@LazySingleton(as: IMedicalRecordsRepo)
class MedicalRecordsRepo extends IMedicalRecordsRepo {
  @override
  Future<Either<MainFailure, MedicalRecordModel>> getMedicalRecords() async {
    final uid = getIt<UserDataModel>().uid;
    try {
      final response =
          await Dio(BaseOptions()).get("$baseUrl/prescriptions/$uid");
      if (response.statusCode == 200) {
        return Right(MedicalRecordModel.fromJson(response.data));
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log("get logs-$e");
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
  Future<Either<MainFailure, List<String>>> uploadMedicalRecords(
      List<XFile> imageFileList) async {
    List<String> uploadedFileURLs = [];

    String uid = getIt<UserDataModel>().uid;
    try {
      for (var imageFile in imageFileList) {
        String fileName = uid +
            DateTime.now().millisecondsSinceEpoch.toString() +
            imageFile.path.split('/').last;

        final storageRef = FirebaseStorage.instance.ref();

        final storageReference = storageRef.child("images/$fileName");

        File file = File(imageFile.path);

        UploadTask uploadTask = storageReference.putFile(file);
        await uploadTask.whenComplete(() async {
          log('File Uploaded');
          await storageReference.getDownloadURL().then((fileURL) {
            uploadedFileURLs.add(fileURL);
          });
        }).onError((error, stackTrace) {
          log(error.toString());
          throw Exception(error);
        });
      }
      return Right(uploadedFileURLs);
    } catch (e) {
      log("upload logs-$e");
      return const Left(MainFailure.otherFailure());
    }
  }

  @override
  Future<List<XFile>> selectedMedicalRecords() async {
    List<XFile> imageFileList = [];

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'jpeg'],
      allowMultiple: true,
    );
    if (result != null) {
      imageFileList = result.paths.map((path) => XFile(path!)).toList();
    }
    return imageFileList;
  }

  @override
  Future<Either<MainFailure, List<String>>> updateMedicalRecords(
      List<String> imageUrlList) async {
    final uid = getIt<UserDataModel>().uid;
    try {
      print(imageUrlList);
      log(uid);
      final response =
          await Dio(BaseOptions()).patch("$baseUrl/prescriptions", data: {
        "_userID": uid,
        "prescription_image_url": imageUrlList,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(imageUrlList);
      } else {
        log(response.data.toString());
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log("update logs-$e");
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
