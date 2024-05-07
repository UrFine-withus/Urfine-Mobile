part of 'checkup_history_bloc.dart';

@freezed
class CheckupHistoryState with _$CheckupHistoryState {
  const factory CheckupHistoryState(
    {
      required bool isLoading,
      required Option<Either<MainFailure, void>> checkupHistoryFailureorSuccess,
  required CheckupHistoryModel? checkupHistory,
    }
  ) = _Initial;
  factory CheckupHistoryState.initial() => CheckupHistoryState(
    isLoading: false,
    checkupHistoryFailureorSuccess: none(),
    checkupHistory: null,
  );
}
