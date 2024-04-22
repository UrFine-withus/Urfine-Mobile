part of 'health_logs_bloc.dart';

@freezed
class HealthLogsState with _$HealthLogsState {
  const factory HealthLogsState({
    required bool isLoading,
    required List<DateTime> dates,
  }) = _HealthLogsState;
  factory HealthLogsState.initial() => HealthLogsState(
        isLoading: false,
        dates: [],
      );
}
