part of 'medical_records_bloc.dart';

@freezed
class MedicalRecordsState with _$MedicalRecordsState {
  const factory MedicalRecordsState({
    required List<XFile> selectedMedicalRecords,
    required bool isUploading,
    required bool isGettingRecords,
    required Option<Either<MainFailure, void>> getfailureOrMedicalRecords,
    required MedicalRecordModel? medicalRecordModel,
    required Option<Either<MainFailure, void>> failureOrMedicalRecords,
  }) = _MedicalRecordsState;
  factory MedicalRecordsState.initial() => MedicalRecordsState(
        selectedMedicalRecords: [],
        isUploading: false,
        failureOrMedicalRecords: none(),
        getfailureOrMedicalRecords: none(),
        isGettingRecords: false,
        medicalRecordModel: null,
      );
}
