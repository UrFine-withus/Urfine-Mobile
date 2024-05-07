import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/checkup_history/i_checkup_history.dart';
import 'package:urfine/domain/checkup_history/model/checkup_history_model.dart';
import 'package:urfine/domain/failure/failure.dart';

part 'checkup_history_event.dart';
part 'checkup_history_state.dart';
part 'checkup_history_bloc.freezed.dart';

@injectable
class CheckupHistoryBloc
    extends Bloc<CheckupHistoryEvent, CheckupHistoryState> {
  final ICheckupHistory _checkupHistory;
  CheckupHistoryBloc(this._checkupHistory)
      : super(CheckupHistoryState.initial()) {
    on<CheckupHistoryEvent>((event, emit) async {
      emit(CheckupHistoryState(
        isLoading: true,
        checkupHistoryFailureorSuccess: none(),
        checkupHistory: null,
      ));
      final result = await _checkupHistory.getCheckupHistory();
      result.fold(
        (l) => emit(CheckupHistoryState(
          isLoading: false,
          checkupHistoryFailureorSuccess: some(left(l)),
          checkupHistory: null,
        )),
        (r) => emit(CheckupHistoryState(
          isLoading: false,
          checkupHistoryFailureorSuccess: some(right(r)),
          checkupHistory: r,
        )),
      );
    });
  }
}
