part of 'add_user_data_bloc.dart';

@freezed
class AddUserDataState with _$AddUserDataState {
  const factory AddUserDataState({
    required bool isSubmitting,
    required Option<Either<MainFailure, void>> addUserDataOption,
  }) = _Initial;
  factory AddUserDataState.initial() => AddUserDataState(
        isSubmitting: false,
        addUserDataOption: none(),
      );
}
