import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/health_logs/i_health_logs_repo.dart';
import 'package:urfine/domain/health_logs/models/health_logs_model.dart';
import 'package:urfine/domain/health_logs/models/logs_date_model.dart';

part 'health_logs_event.dart';
part 'health_logs_state.dart';
part 'health_logs_bloc.freezed.dart';

@injectable
class HealthLogsBloc extends Bloc<HealthLogsEvent, HealthLogsState> {
  final IHealthLogsRepo _healthLogsRepo;
  HealthLogsBloc(this._healthLogsRepo) : super(HealthLogsState.initial()) {
    on<_FatchDates>((event, emit) async {
      emit(state.copyWith(
        isDatesFetching: true,
      ));
      final result = await _healthLogsRepo.fetchDates();
      result.fold((l) {
        emit(state.copyWith(
          isDatesFetching: false,
          fetDatesFailureOrSuccess: some(left(l)),
        ));
      }, (r) {
        emit(state.copyWith(
          isDatesFetching: false,
          fetDatesFailureOrSuccess: some(right(null)),
          dates: r,
        ));
      });
    });
    on<_FatchLogs>((event, emit) async {
      log("fetching logs");
      emit(
        state.copyWith(
          isLogsFetching: true,
        ),
      );
      final result = await _healthLogsRepo.getHealthLogs(event.date);
      result.fold((l) {
        emit(state.copyWith(
          isLogsFetching: false,
          fetchLogsFailureOrSuccess: some(left(l)),
        ));
      }, (r) {
        emit(state.copyWith(
          isLogsFetching: false,
          fetchLogsFailureOrSuccess: some(right(null)),
          logs: r,
        ));
      });
    });
  }
}
