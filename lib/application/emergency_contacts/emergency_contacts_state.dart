part of 'emergency_contacts_bloc.dart';

@freezed
class EmergencyContactsState with _$EmergencyContactsState {
  const factory EmergencyContactsState({
    required bool isLoading,
    required List<EmergencyContact> hospitalContacts,
    required List<EmergencyContact> bloodBankContacts,
    required List<EmergencyContact> ambulanceContacts,
    required List<EmergencyContact> clinicContacts,
    required Option<Either<MainFailure, EmergencyModel>> emergencyContactsFailureorSuccess,
  }) = _EmergencyContactsState;
  factory EmergencyContactsState.initial() => EmergencyContactsState(
        isLoading: false,
        hospitalContacts: [],
        bloodBankContacts: [],
        ambulanceContacts: [],
        clinicContacts: [],
        emergencyContactsFailureorSuccess: none(),
      );
}
