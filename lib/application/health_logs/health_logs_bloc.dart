import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_logs_event.dart';
part 'health_logs_state.dart';
part 'health_logs_bloc.freezed.dart';

class HealthLogsBloc extends Bloc<HealthLogsEvent, HealthLogsState> {
  HealthLogsBloc() : super(HealthLogsState.initial()) {
    on<_FatchDates>((event, emit) {
      emit(state.copyWith(
        isLoading: true,
      ));
    });
  }
}
