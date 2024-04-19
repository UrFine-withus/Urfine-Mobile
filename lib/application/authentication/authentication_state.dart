part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required bool isLoading,
    required String? otp,
    required Option<Either<MainFailure, void>> loginFailuteOrSuccessOption,
    required Option<Either<MainFailure, void>> sendOtpFailureOrSuccessOption,
    required Option<Either<MainFailure, void>> signupFailureOrSuccessOption,
    required Option<Either<MainFailure, void>> resetPasswordFailureOrSuccessOption,
    required Option<Either<MainFailure, void>> logout,
  }) = _AuthenticationState;
  factory AuthenticationState.initial() => AuthenticationState(
        isLoading: false,
        otp: null,
        loginFailuteOrSuccessOption: none(),
        sendOtpFailureOrSuccessOption: none(),
        signupFailureOrSuccessOption: none(),
        resetPasswordFailureOrSuccessOption: none(),
        logout: none(),
      );
}
