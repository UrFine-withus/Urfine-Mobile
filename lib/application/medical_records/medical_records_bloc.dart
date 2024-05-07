import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/medical_records/i_medical_records_repo.dart';
import 'package:urfine/domain/medical_records/model/medical_reocrds_model.dart';

part 'medical_records_event.dart';
part 'medical_records_state.dart';
part 'medical_records_bloc.freezed.dart';

@injectable
class MedicalRecordsBloc
    extends Bloc<MedicalRecordsEvent, MedicalRecordsState> {
  final IMedicalRecordsRepo _medicalRecordsRepo;
  MedicalRecordsBloc(this._medicalRecordsRepo)
      : super(MedicalRecordsState.initial()) {
    on<_SelectMedRec>((event, emit) async {
      final selectedImages = await _medicalRecordsRepo.selectedMedicalRecords();
      emit(state.copyWith(
        selectedMedicalRecords: selectedImages,
      ));
    });
    on<_RemoveAt>((event, emit) {
      List<XFile> newSelectedImages = [...state.selectedMedicalRecords];
      newSelectedImages.removeAt(event.index);
      emit(state.copyWith(
        selectedMedicalRecords: newSelectedImages,
      ));
    });
    on<_UploadMedRec>((event, emit) async {
      List<XFile> selectedImages = [];
      if (event.needToSelect) {
        selectedImages = await _medicalRecordsRepo.selectedMedicalRecords();
      }
      log("selectedImages: $selectedImages");
      if (selectedImages.isEmpty && state.selectedMedicalRecords.isEmpty) {
        return;
      }
      emit(state.copyWith(
        isUploading: true,
      ));
      final result = await _medicalRecordsRepo.uploadMedicalRecords(
          selectedImages.isNotEmpty
              ? selectedImages
              : state.selectedMedicalRecords);

      await result.fold(
        (l) {
          log("1");
          emit(state.copyWith(
            isUploading: false,
            failureOrMedicalRecords: some(left(l)),
          ));
        },
        (r) async {
          final updateResponse =
              await _medicalRecordsRepo.updateMedicalRecords(r);
          updateResponse.fold((l) {
            log("2");
            emit(state.copyWith(
              isUploading: false,
              failureOrMedicalRecords: some(left(l)),
            ));
          }, (r) {
            this.add(const MedicalRecordsEvent.getRecords());
            emit(state.copyWith(
              isUploading: false,
              selectedMedicalRecords: [],
              failureOrMedicalRecords: some(right(null)),
            ));
          });
        },
      );
    });
    on<_ResetState>((event, emit) {
      emit(MedicalRecordsState.initial());
    });
    on<_GetRecords>((event, emit) async {
      log("Get Records");
      emit(state.copyWith(
        isGettingRecords: true,
      ));
      final result = await _medicalRecordsRepo.getMedicalRecords();
      result.fold(
        (l) {
          emit(state.copyWith(
            isGettingRecords: false,
            getfailureOrMedicalRecords: some(left(l)),
          ));
        },
        (r) {
          emit(state.copyWith(
            isGettingRecords: false,
            medicalRecordModel: r,
            getfailureOrMedicalRecords: some(right(r)),
          ));
        },
      );
    });
  }
}
