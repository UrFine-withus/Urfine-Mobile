part of 'add_user_data_bloc.dart';

@freezed
class AddUserDataEvent with _$AddUserDataEvent {
  const factory AddUserDataEvent(AddUserModel model) = _AddUserDataEvent;
  const factory AddUserDataEvent.done() = _Done;
}