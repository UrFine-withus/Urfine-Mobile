// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOtp,
    required TResult Function(String email, String password) signupWithFirebase,
    required TResult Function(String email, String password) loginWithFirebase,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email, String password)? signupWithFirebase,
    TResult? Function(String email, String password)? loginWithFirebase,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOtp,
    TResult Function(String email, String password)? signupWithFirebase,
    TResult Function(String email, String password)? loginWithFirebase,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignupWithFirebase value) signupWithFirebase,
    required TResult Function(_LoginWithFirebase value) loginWithFirebase,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult? Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendOtpImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.sendOtp(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOtp,
    required TResult Function(String email, String password) signupWithFirebase,
    required TResult Function(String email, String password) loginWithFirebase,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
  }) {
    return sendOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email, String password)? signupWithFirebase,
    TResult? Function(String email, String password)? loginWithFirebase,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
  }) {
    return sendOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOtp,
    TResult Function(String email, String password)? signupWithFirebase,
    TResult Function(String email, String password)? loginWithFirebase,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignupWithFirebase value) signupWithFirebase,
    required TResult Function(_LoginWithFirebase value) loginWithFirebase,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult? Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements AuthenticationEvent {
  const factory _SendOtp(final String email) = _$SendOtpImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupWithFirebaseImplCopyWith<$Res> {
  factory _$$SignupWithFirebaseImplCopyWith(_$SignupWithFirebaseImpl value,
          $Res Function(_$SignupWithFirebaseImpl) then) =
      __$$SignupWithFirebaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignupWithFirebaseImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SignupWithFirebaseImpl>
    implements _$$SignupWithFirebaseImplCopyWith<$Res> {
  __$$SignupWithFirebaseImplCopyWithImpl(_$SignupWithFirebaseImpl _value,
      $Res Function(_$SignupWithFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupWithFirebaseImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupWithFirebaseImpl implements _SignupWithFirebase {
  const _$SignupWithFirebaseImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.signupWithFirebase(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupWithFirebaseImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupWithFirebaseImplCopyWith<_$SignupWithFirebaseImpl> get copyWith =>
      __$$SignupWithFirebaseImplCopyWithImpl<_$SignupWithFirebaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOtp,
    required TResult Function(String email, String password) signupWithFirebase,
    required TResult Function(String email, String password) loginWithFirebase,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
  }) {
    return signupWithFirebase(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email, String password)? signupWithFirebase,
    TResult? Function(String email, String password)? loginWithFirebase,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
  }) {
    return signupWithFirebase?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOtp,
    TResult Function(String email, String password)? signupWithFirebase,
    TResult Function(String email, String password)? loginWithFirebase,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signupWithFirebase != null) {
      return signupWithFirebase(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignupWithFirebase value) signupWithFirebase,
    required TResult Function(_LoginWithFirebase value) loginWithFirebase,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return signupWithFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult? Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return signupWithFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (signupWithFirebase != null) {
      return signupWithFirebase(this);
    }
    return orElse();
  }
}

abstract class _SignupWithFirebase implements AuthenticationEvent {
  const factory _SignupWithFirebase(final String email, final String password) =
      _$SignupWithFirebaseImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignupWithFirebaseImplCopyWith<_$SignupWithFirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithFirebaseImplCopyWith<$Res> {
  factory _$$LoginWithFirebaseImplCopyWith(_$LoginWithFirebaseImpl value,
          $Res Function(_$LoginWithFirebaseImpl) then) =
      __$$LoginWithFirebaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginWithFirebaseImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LoginWithFirebaseImpl>
    implements _$$LoginWithFirebaseImplCopyWith<$Res> {
  __$$LoginWithFirebaseImplCopyWithImpl(_$LoginWithFirebaseImpl _value,
      $Res Function(_$LoginWithFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithFirebaseImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithFirebaseImpl implements _LoginWithFirebase {
  const _$LoginWithFirebaseImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.loginWithFirebase(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithFirebaseImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithFirebaseImplCopyWith<_$LoginWithFirebaseImpl> get copyWith =>
      __$$LoginWithFirebaseImplCopyWithImpl<_$LoginWithFirebaseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOtp,
    required TResult Function(String email, String password) signupWithFirebase,
    required TResult Function(String email, String password) loginWithFirebase,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
  }) {
    return loginWithFirebase(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email, String password)? signupWithFirebase,
    TResult? Function(String email, String password)? loginWithFirebase,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
  }) {
    return loginWithFirebase?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOtp,
    TResult Function(String email, String password)? signupWithFirebase,
    TResult Function(String email, String password)? loginWithFirebase,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithFirebase != null) {
      return loginWithFirebase(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignupWithFirebase value) signupWithFirebase,
    required TResult Function(_LoginWithFirebase value) loginWithFirebase,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return loginWithFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult? Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginWithFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithFirebase != null) {
      return loginWithFirebase(this);
    }
    return orElse();
  }
}

abstract class _LoginWithFirebase implements AuthenticationEvent {
  const factory _LoginWithFirebase(final String email, final String password) =
      _$LoginWithFirebaseImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginWithFirebaseImplCopyWith<_$LoginWithFirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOtp,
    required TResult Function(String email, String password) signupWithFirebase,
    required TResult Function(String email, String password) loginWithFirebase,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email, String password)? signupWithFirebase,
    TResult? Function(String email, String password)? loginWithFirebase,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOtp,
    TResult Function(String email, String password)? signupWithFirebase,
    TResult Function(String email, String password)? loginWithFirebase,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignupWithFirebase value) signupWithFirebase,
    required TResult Function(_LoginWithFirebase value) loginWithFirebase,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult? Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements AuthenticationEvent {
  const factory _ResetPassword(final String email) = _$ResetPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendOtp,
    required TResult Function(String email, String password) signupWithFirebase,
    required TResult Function(String email, String password) loginWithFirebase,
    required TResult Function(String email) resetPassword,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email, String password)? signupWithFirebase,
    TResult? Function(String email, String password)? loginWithFirebase,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendOtp,
    TResult Function(String email, String password)? signupWithFirebase,
    TResult Function(String email, String password)? loginWithFirebase,
    TResult Function(String email)? resetPassword,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_SignupWithFirebase value) signupWithFirebase,
    required TResult Function(_LoginWithFirebase value) loginWithFirebase,
    required TResult Function(_ResetPassword value) resetPassword,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult? Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult? Function(_ResetPassword value)? resetPassword,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_SignupWithFirebase value)? signupWithFirebase,
    TResult Function(_LoginWithFirebase value)? loginWithFirebase,
    TResult Function(_ResetPassword value)? resetPassword,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get loginFailuteOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get sendOtpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get signupFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get resetPasswordFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get logout =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? otp,
      Option<Either<MainFailure, void>> loginFailuteOrSuccessOption,
      Option<Either<MainFailure, void>> sendOtpFailureOrSuccessOption,
      Option<Either<MainFailure, void>> signupFailureOrSuccessOption,
      Option<Either<MainFailure, void>> resetPasswordFailureOrSuccessOption,
      Option<Either<MainFailure, void>> logout});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? otp = freezed,
    Object? loginFailuteOrSuccessOption = null,
    Object? sendOtpFailureOrSuccessOption = null,
    Object? signupFailureOrSuccessOption = null,
    Object? resetPasswordFailureOrSuccessOption = null,
    Object? logout = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      loginFailuteOrSuccessOption: null == loginFailuteOrSuccessOption
          ? _value.loginFailuteOrSuccessOption
          : loginFailuteOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      sendOtpFailureOrSuccessOption: null == sendOtpFailureOrSuccessOption
          ? _value.sendOtpFailureOrSuccessOption
          : sendOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      signupFailureOrSuccessOption: null == signupFailureOrSuccessOption
          ? _value.signupFailureOrSuccessOption
          : signupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      resetPasswordFailureOrSuccessOption: null ==
              resetPasswordFailureOrSuccessOption
          ? _value.resetPasswordFailureOrSuccessOption
          : resetPasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      logout: null == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? otp,
      Option<Either<MainFailure, void>> loginFailuteOrSuccessOption,
      Option<Either<MainFailure, void>> sendOtpFailureOrSuccessOption,
      Option<Either<MainFailure, void>> signupFailureOrSuccessOption,
      Option<Either<MainFailure, void>> resetPasswordFailureOrSuccessOption,
      Option<Either<MainFailure, void>> logout});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? otp = freezed,
    Object? loginFailuteOrSuccessOption = null,
    Object? sendOtpFailureOrSuccessOption = null,
    Object? signupFailureOrSuccessOption = null,
    Object? resetPasswordFailureOrSuccessOption = null,
    Object? logout = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      loginFailuteOrSuccessOption: null == loginFailuteOrSuccessOption
          ? _value.loginFailuteOrSuccessOption
          : loginFailuteOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      sendOtpFailureOrSuccessOption: null == sendOtpFailureOrSuccessOption
          ? _value.sendOtpFailureOrSuccessOption
          : sendOtpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      signupFailureOrSuccessOption: null == signupFailureOrSuccessOption
          ? _value.signupFailureOrSuccessOption
          : signupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      resetPasswordFailureOrSuccessOption: null ==
              resetPasswordFailureOrSuccessOption
          ? _value.resetPasswordFailureOrSuccessOption
          : resetPasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      logout: null == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {required this.isLoading,
      required this.otp,
      required this.loginFailuteOrSuccessOption,
      required this.sendOtpFailureOrSuccessOption,
      required this.signupFailureOrSuccessOption,
      required this.resetPasswordFailureOrSuccessOption,
      required this.logout});

  @override
  final bool isLoading;
  @override
  final String? otp;
  @override
  final Option<Either<MainFailure, void>> loginFailuteOrSuccessOption;
  @override
  final Option<Either<MainFailure, void>> sendOtpFailureOrSuccessOption;
  @override
  final Option<Either<MainFailure, void>> signupFailureOrSuccessOption;
  @override
  final Option<Either<MainFailure, void>> resetPasswordFailureOrSuccessOption;
  @override
  final Option<Either<MainFailure, void>> logout;

  @override
  String toString() {
    return 'AuthenticationState(isLoading: $isLoading, otp: $otp, loginFailuteOrSuccessOption: $loginFailuteOrSuccessOption, sendOtpFailureOrSuccessOption: $sendOtpFailureOrSuccessOption, signupFailureOrSuccessOption: $signupFailureOrSuccessOption, resetPasswordFailureOrSuccessOption: $resetPasswordFailureOrSuccessOption, logout: $logout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.loginFailuteOrSuccessOption,
                    loginFailuteOrSuccessOption) ||
                other.loginFailuteOrSuccessOption ==
                    loginFailuteOrSuccessOption) &&
            (identical(other.sendOtpFailureOrSuccessOption,
                    sendOtpFailureOrSuccessOption) ||
                other.sendOtpFailureOrSuccessOption ==
                    sendOtpFailureOrSuccessOption) &&
            (identical(other.signupFailureOrSuccessOption,
                    signupFailureOrSuccessOption) ||
                other.signupFailureOrSuccessOption ==
                    signupFailureOrSuccessOption) &&
            (identical(other.resetPasswordFailureOrSuccessOption,
                    resetPasswordFailureOrSuccessOption) ||
                other.resetPasswordFailureOrSuccessOption ==
                    resetPasswordFailureOrSuccessOption) &&
            (identical(other.logout, logout) || other.logout == logout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      otp,
      loginFailuteOrSuccessOption,
      sendOtpFailureOrSuccessOption,
      signupFailureOrSuccessOption,
      resetPasswordFailureOrSuccessOption,
      logout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
          {required final bool isLoading,
          required final String? otp,
          required final Option<Either<MainFailure, void>>
              loginFailuteOrSuccessOption,
          required final Option<Either<MainFailure, void>>
              sendOtpFailureOrSuccessOption,
          required final Option<Either<MainFailure, void>>
              signupFailureOrSuccessOption,
          required final Option<Either<MainFailure, void>>
              resetPasswordFailureOrSuccessOption,
          required final Option<Either<MainFailure, void>> logout}) =
      _$AuthenticationStateImpl;

  @override
  bool get isLoading;
  @override
  String? get otp;
  @override
  Option<Either<MainFailure, void>> get loginFailuteOrSuccessOption;
  @override
  Option<Either<MainFailure, void>> get sendOtpFailureOrSuccessOption;
  @override
  Option<Either<MainFailure, void>> get signupFailureOrSuccessOption;
  @override
  Option<Either<MainFailure, void>> get resetPasswordFailureOrSuccessOption;
  @override
  Option<Either<MainFailure, void>> get logout;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
