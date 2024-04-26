part of 'health_logs_bloc.dart';

@freezed
class HealthLogsState with _$HealthLogsState {
  const factory HealthLogsState({
    required bool isDatesFetching,
    required bool isLogsFetching,
    required LogsDateModel? dates,
    required HealthLogsModel? logs,
    required Option<Either<MainFailure, void>> fetDatesFailureOrSuccess,
    required Option<Either<MainFailure, void>> fetchLogsFailureOrSuccess,
  }) = _HealthLogsState;
  factory HealthLogsState.initial() => HealthLogsState(
        isDatesFetching: false,
        isLogsFetching: false,
        dates: null,
        logs: null,
        fetDatesFailureOrSuccess: none(),
        fetchLogsFailureOrSuccess: none(),
      );
}
