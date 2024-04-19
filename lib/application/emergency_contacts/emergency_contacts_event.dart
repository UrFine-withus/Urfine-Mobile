part of 'emergency_contacts_bloc.dart';

@freezed
class EmergencyContactsEvent with _$EmergencyContactsEvent {
  const factory EmergencyContactsEvent({required EmergencyContactType type}) =
      _Started;
}
