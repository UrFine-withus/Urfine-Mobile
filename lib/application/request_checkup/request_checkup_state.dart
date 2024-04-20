part of 'request_checkup_bloc.dart';

@freezed
class RequestCheckupState with _$RequestCheckupState {
  const factory RequestCheckupState({
    required bool isLoading,
    required Option<Either<MainFailure, void>> requestFailureOrSuccessOption,
  }) = _RequestCheckupState;
  factory RequestCheckupState.initial() => RequestCheckupState(
        isLoading: false,
        requestFailureOrSuccessOption: none(),
      );
}
