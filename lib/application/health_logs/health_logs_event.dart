part of 'health_logs_bloc.dart';

@freezed
class HealthLogsEvent with _$HealthLogsEvent {
  const factory HealthLogsEvent.fatchDates() = _FatchDates;
  const factory HealthLogsEvent.fatchLogs(String date) = _FatchLogs;
}