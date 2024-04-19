// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function() noInternet,
    required TResult Function() otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function()? noInternet,
    TResult? Function()? otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function()? noInternet,
    TResult Function()? otherFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(OtherFailure value) otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(OtherFailure value)? otherFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientFailureImplCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientFailureImpl implements _ClientFailure {
  const _$ClientFailureImpl();

  @override
  String toString() {
    return 'MainFailure.clientFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function() noInternet,
    required TResult Function() otherFailure,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function()? noInternet,
    TResult? Function()? otherFailure,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function()? noInternet,
    TResult Function()? otherFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements MainFailure {
  const factory _ClientFailure() = _$ClientFailureImpl;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl();

  @override
  String toString() {
    return 'MainFailure.serverFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function() noInternet,
    required TResult Function() otherFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function()? noInternet,
    TResult? Function()? otherFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function()? noInternet,
    TResult Function()? otherFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure() = _$ServerFailureImpl;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainFailure.authFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function() noInternet,
    required TResult Function() otherFailure,
  }) {
    return authFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function()? noInternet,
    TResult? Function()? otherFailure,
  }) {
    return authFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function()? noInternet,
    TResult Function()? otherFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements MainFailure {
  const factory AuthFailure(final String message) = _$AuthFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl implements NoInternet {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'MainFailure.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function() noInternet,
    required TResult Function() otherFailure,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function()? noInternet,
    TResult? Function()? otherFailure,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function()? noInternet,
    TResult Function()? otherFailure,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements MainFailure {
  const factory NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$OtherFailureImplCopyWith<$Res> {
  factory _$$OtherFailureImplCopyWith(
          _$OtherFailureImpl value, $Res Function(_$OtherFailureImpl) then) =
      __$$OtherFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtherFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$OtherFailureImpl>
    implements _$$OtherFailureImplCopyWith<$Res> {
  __$$OtherFailureImplCopyWithImpl(
      _$OtherFailureImpl _value, $Res Function(_$OtherFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtherFailureImpl implements OtherFailure {
  const _$OtherFailureImpl();

  @override
  String toString() {
    return 'MainFailure.otherFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtherFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function() serverFailure,
    required TResult Function(String message) authFailure,
    required TResult Function() noInternet,
    required TResult Function() otherFailure,
  }) {
    return otherFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function()? serverFailure,
    TResult? Function(String message)? authFailure,
    TResult? Function()? noInternet,
    TResult? Function()? otherFailure,
  }) {
    return otherFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function()? serverFailure,
    TResult Function(String message)? authFailure,
    TResult Function()? noInternet,
    TResult Function()? otherFailure,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(OtherFailure value) otherFailure,
  }) {
    return otherFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(AuthFailure value)? authFailure,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(OtherFailure value)? otherFailure,
  }) {
    return otherFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(OtherFailure value)? otherFailure,
    required TResult orElse(),
  }) {
    if (otherFailure != null) {
      return otherFailure(this);
    }
    return orElse();
  }
}

abstract class OtherFailure implements MainFailure {
  const factory OtherFailure() = _$OtherFailureImpl;
}
