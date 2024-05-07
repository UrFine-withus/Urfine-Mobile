// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkup_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckupHistoryEvent {}

/// @nodoc
abstract class $CheckupHistoryEventCopyWith<$Res> {
  factory $CheckupHistoryEventCopyWith(
          CheckupHistoryEvent value, $Res Function(CheckupHistoryEvent) then) =
      _$CheckupHistoryEventCopyWithImpl<$Res, CheckupHistoryEvent>;
}

/// @nodoc
class _$CheckupHistoryEventCopyWithImpl<$Res, $Val extends CheckupHistoryEvent>
    implements $CheckupHistoryEventCopyWith<$Res> {
  _$CheckupHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckupHistoryEventImplCopyWith<$Res> {
  factory _$$CheckupHistoryEventImplCopyWith(_$CheckupHistoryEventImpl value,
          $Res Function(_$CheckupHistoryEventImpl) then) =
      __$$CheckupHistoryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckupHistoryEventImplCopyWithImpl<$Res>
    extends _$CheckupHistoryEventCopyWithImpl<$Res, _$CheckupHistoryEventImpl>
    implements _$$CheckupHistoryEventImplCopyWith<$Res> {
  __$$CheckupHistoryEventImplCopyWithImpl(_$CheckupHistoryEventImpl _value,
      $Res Function(_$CheckupHistoryEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckupHistoryEventImpl implements _CheckupHistoryEvent {
  const _$CheckupHistoryEventImpl();

  @override
  String toString() {
    return 'CheckupHistoryEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckupHistoryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CheckupHistoryEvent implements CheckupHistoryEvent {
  const factory _CheckupHistoryEvent() = _$CheckupHistoryEventImpl;
}

/// @nodoc
mixin _$CheckupHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get checkupHistoryFailureorSuccess =>
      throw _privateConstructorUsedError;
  CheckupHistoryModel? get checkupHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckupHistoryStateCopyWith<CheckupHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckupHistoryStateCopyWith<$Res> {
  factory $CheckupHistoryStateCopyWith(
          CheckupHistoryState value, $Res Function(CheckupHistoryState) then) =
      _$CheckupHistoryStateCopyWithImpl<$Res, CheckupHistoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, void>> checkupHistoryFailureorSuccess,
      CheckupHistoryModel? checkupHistory});
}

/// @nodoc
class _$CheckupHistoryStateCopyWithImpl<$Res, $Val extends CheckupHistoryState>
    implements $CheckupHistoryStateCopyWith<$Res> {
  _$CheckupHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? checkupHistoryFailureorSuccess = null,
    Object? checkupHistory = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkupHistoryFailureorSuccess: null == checkupHistoryFailureorSuccess
          ? _value.checkupHistoryFailureorSuccess
          : checkupHistoryFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      checkupHistory: freezed == checkupHistory
          ? _value.checkupHistory
          : checkupHistory // ignore: cast_nullable_to_non_nullable
              as CheckupHistoryModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CheckupHistoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, void>> checkupHistoryFailureorSuccess,
      CheckupHistoryModel? checkupHistory});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckupHistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? checkupHistoryFailureorSuccess = null,
    Object? checkupHistory = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkupHistoryFailureorSuccess: null == checkupHistoryFailureorSuccess
          ? _value.checkupHistoryFailureorSuccess
          : checkupHistoryFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
      checkupHistory: freezed == checkupHistory
          ? _value.checkupHistory
          : checkupHistory // ignore: cast_nullable_to_non_nullable
              as CheckupHistoryModel?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.checkupHistoryFailureorSuccess,
      required this.checkupHistory});

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, void>> checkupHistoryFailureorSuccess;
  @override
  final CheckupHistoryModel? checkupHistory;

  @override
  String toString() {
    return 'CheckupHistoryState(isLoading: $isLoading, checkupHistoryFailureorSuccess: $checkupHistoryFailureorSuccess, checkupHistory: $checkupHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.checkupHistoryFailureorSuccess,
                    checkupHistoryFailureorSuccess) ||
                other.checkupHistoryFailureorSuccess ==
                    checkupHistoryFailureorSuccess) &&
            (identical(other.checkupHistory, checkupHistory) ||
                other.checkupHistory == checkupHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, checkupHistoryFailureorSuccess, checkupHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements CheckupHistoryState {
  const factory _Initial(
      {required final bool isLoading,
      required final Option<Either<MainFailure, void>>
          checkupHistoryFailureorSuccess,
      required final CheckupHistoryModel? checkupHistory}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, void>> get checkupHistoryFailureorSuccess;
  @override
  CheckupHistoryModel? get checkupHistory;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
