import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/authentication/i_auth_repo.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/token_manager/i_token_manager_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthRepo _authRepo;
  final ITokenManagerRepo _tokenManagerRepo;
  AuthenticationBloc(this._authRepo, this._tokenManagerRepo)
      : super(AuthenticationState.initial()) {
    on<_Logout>((event, emit) async {
      final response = await _authRepo.logout();
      await response.fold((l) {
        emit(state.copyWith(
          isLoading: false,
          logout: some(left(l)),
        ));
      }, (r) async {
        await _tokenManagerRepo.removeUser();
        emit(state.copyWith(
          isLoading: false,
          logout: some(right(null)),
        ));
      });
    });
    on<_LoginWithFirebase>((event, emit) async {
      emit(AuthenticationState(
          isLoading: true,
          otp: null,
          loginFailuteOrSuccessOption: none(),
          resetPasswordFailureOrSuccessOption: none(),
          sendOtpFailureOrSuccessOption: none(),
          signupFailureOrSuccessOption: none(),
          logout: none()));
      final response =
          await _authRepo.loginFirebase(event.email, event.password);
      await response.fold(
        (l) {
          emit(state.copyWith(
            isLoading: false,
            loginFailuteOrSuccessOption: some(left(l)),
          ));
        },
        (r) async {
          await _tokenManagerRepo.saveUser();
          final usernameRespo = await _authRepo.getUserName();
          await usernameRespo.fold((l) {
            emit(state.copyWith(
              isLoading: false,
              loginFailuteOrSuccessOption: some(left(l)),
            ));
          }, (r) async {
            await _tokenManagerRepo.saveName();
            emit(state.copyWith(
              isLoading: false,
              loginFailuteOrSuccessOption: some(right(null)),
            ));
          });
        },
      );
    });
    on<_SendOtp>((event, emit) async {
      emit(AuthenticationState(
          isLoading: true,
          otp: null,
          resetPasswordFailureOrSuccessOption: none(),
          loginFailuteOrSuccessOption: none(),
          sendOtpFailureOrSuccessOption: none(),
          signupFailureOrSuccessOption: none(),
          logout: none()));
      final response = await _authRepo.sendOtp(event.email);
      await response.fold(
        (l) {
          emit(state.copyWith(
            isLoading: false,
            sendOtpFailureOrSuccessOption: some(left(l)),
          ));
        },
        (r) async {
          emit(
            state.copyWith(
              isLoading: false,
              sendOtpFailureOrSuccessOption: some(right(null)),
              otp: r,
            ),
          );
          await Future.delayed(const Duration(minutes: 2));
          emit(state.copyWith(otp: null));
        },
      );
    });
    on<_SignupWithFirebase>((event, emit) async {
      emit(AuthenticationState(
          isLoading: true,
          otp: null,
          loginFailuteOrSuccessOption: none(),
          sendOtpFailureOrSuccessOption: none(),
          signupFailureOrSuccessOption: none(),
          resetPasswordFailureOrSuccessOption: none(),
          logout: none()));
      final response =
          await _authRepo.signupFirebase(event.email, event.password);
      await response.fold((l) async {
        emit(state.copyWith(
          isLoading: false,
          signupFailureOrSuccessOption: some(left(l)),
        ));
      }, (r) async {
        await _tokenManagerRepo.saveUser();
        final addUserResponse = await _authRepo.addUser(event.email);
        addUserResponse.fold((l) {
          emit(state.copyWith(
            isLoading: false,
            signupFailureOrSuccessOption: some(left(l)),
          ));
        }, (r) {
          emit(state.copyWith(
            isLoading: false,
            signupFailureOrSuccessOption: some(right(null)),
          ));
        });
      });
    });
    on<_ResetPassword>((event, emit) async {
      emit(AuthenticationState(
          isLoading: true,
          otp: null,
          loginFailuteOrSuccessOption: none(),
          sendOtpFailureOrSuccessOption: none(),
          signupFailureOrSuccessOption: none(),
          resetPasswordFailureOrSuccessOption: none(),
          logout: none()));
      final response = await _authRepo.resetPassword(event.email);
      response.fold(
        (l) {
          emit(state.copyWith(
            isLoading: false,
            resetPasswordFailureOrSuccessOption: some(left(l)),
          ));
        },
        (r) {
          emit(state.copyWith(
            isLoading: false,
            resetPasswordFailureOrSuccessOption: some(right(null)),
          ));
        },
      );
    });
  }
}
