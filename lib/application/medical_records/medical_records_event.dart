part of 'medical_records_bloc.dart';

@freezed
class MedicalRecordsEvent with _$MedicalRecordsEvent {
  const factory MedicalRecordsEvent.selectMedRec() = _SelectMedRec;
  const factory MedicalRecordsEvent.removeAt(int index) = _RemoveAt;
  const factory MedicalRecordsEvent.uploadMedRec(bool needToSelect) = _UploadMedRec;
   const factory MedicalRecordsEvent.resetState() = _ResetState;
   const factory MedicalRecordsEvent.getRecords() = _GetRecords;
}