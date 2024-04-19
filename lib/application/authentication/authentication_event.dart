part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.sendOtp(String email) = _SendOtp;
  const factory AuthenticationEvent.signupWithFirebase(
      String email, String password) = _SignupWithFirebase;
  const factory AuthenticationEvent.loginWithFirebase(
      String email, String password) = _LoginWithFirebase;
  const factory AuthenticationEvent.resetPassword(String email) = _ResetPassword;
  const factory AuthenticationEvent.logout() = _Logout;
}
