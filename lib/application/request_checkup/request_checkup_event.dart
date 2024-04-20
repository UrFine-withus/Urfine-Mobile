part of 'request_checkup_bloc.dart';

@freezed
class RequestCheckupEvent with _$RequestCheckupEvent {
  const factory RequestCheckupEvent(RequestModel requestModel) = _Started;
}