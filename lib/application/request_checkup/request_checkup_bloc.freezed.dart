// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_checkup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestCheckupEvent {
  RequestModel get requestModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestCheckupEventCopyWith<RequestCheckupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCheckupEventCopyWith<$Res> {
  factory $RequestCheckupEventCopyWith(
          RequestCheckupEvent value, $Res Function(RequestCheckupEvent) then) =
      _$RequestCheckupEventCopyWithImpl<$Res, RequestCheckupEvent>;
  @useResult
  $Res call({RequestModel requestModel});
}

/// @nodoc
class _$RequestCheckupEventCopyWithImpl<$Res, $Val extends RequestCheckupEvent>
    implements $RequestCheckupEventCopyWith<$Res> {
  _$RequestCheckupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModel = null,
  }) {
    return _then(_value.copyWith(
      requestModel: null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as RequestModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $RequestCheckupEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestModel requestModel});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RequestCheckupEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestModel = null,
  }) {
    return _then(_$StartedImpl(
      null == requestModel
          ? _value.requestModel
          : requestModel // ignore: cast_nullable_to_non_nullable
              as RequestModel,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.requestModel);

  @override
  final RequestModel requestModel;

  @override
  String toString() {
    return 'RequestCheckupEvent(requestModel: $requestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.requestModel, requestModel) ||
                other.requestModel == requestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);
}

abstract class _Started implements RequestCheckupEvent {
  const factory _Started(final RequestModel requestModel) = _$StartedImpl;

  @override
  RequestModel get requestModel;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestCheckupState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get requestFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequestCheckupStateCopyWith<RequestCheckupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCheckupStateCopyWith<$Res> {
  factory $RequestCheckupStateCopyWith(
          RequestCheckupState value, $Res Function(RequestCheckupState) then) =
      _$RequestCheckupStateCopyWithImpl<$Res, RequestCheckupState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, void>> requestFailureOrSuccessOption});
}

/// @nodoc
class _$RequestCheckupStateCopyWithImpl<$Res, $Val extends RequestCheckupState>
    implements $RequestCheckupStateCopyWith<$Res> {
  _$RequestCheckupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? requestFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requestFailureOrSuccessOption: null == requestFailureOrSuccessOption
          ? _value.requestFailureOrSuccessOption
          : requestFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCheckupStateImplCopyWith<$Res>
    implements $RequestCheckupStateCopyWith<$Res> {
  factory _$$RequestCheckupStateImplCopyWith(_$RequestCheckupStateImpl value,
          $Res Function(_$RequestCheckupStateImpl) then) =
      __$$RequestCheckupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, void>> requestFailureOrSuccessOption});
}

/// @nodoc
class __$$RequestCheckupStateImplCopyWithImpl<$Res>
    extends _$RequestCheckupStateCopyWithImpl<$Res, _$RequestCheckupStateImpl>
    implements _$$RequestCheckupStateImplCopyWith<$Res> {
  __$$RequestCheckupStateImplCopyWithImpl(_$RequestCheckupStateImpl _value,
      $Res Function(_$RequestCheckupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? requestFailureOrSuccessOption = null,
  }) {
    return _then(_$RequestCheckupStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requestFailureOrSuccessOption: null == requestFailureOrSuccessOption
          ? _value.requestFailureOrSuccessOption
          : requestFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ));
  }
}

/// @nodoc

class _$RequestCheckupStateImpl implements _RequestCheckupState {
  const _$RequestCheckupStateImpl(
      {required this.isLoading, required this.requestFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, void>> requestFailureOrSuccessOption;

  @override
  String toString() {
    return 'RequestCheckupState(isLoading: $isLoading, requestFailureOrSuccessOption: $requestFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCheckupStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.requestFailureOrSuccessOption,
                    requestFailureOrSuccessOption) ||
                other.requestFailureOrSuccessOption ==
                    requestFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, requestFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCheckupStateImplCopyWith<_$RequestCheckupStateImpl> get copyWith =>
      __$$RequestCheckupStateImplCopyWithImpl<_$RequestCheckupStateImpl>(
          this, _$identity);
}

abstract class _RequestCheckupState implements RequestCheckupState {
  const factory _RequestCheckupState(
      {required final bool isLoading,
      required final Option<Either<MainFailure, void>>
          requestFailureOrSuccessOption}) = _$RequestCheckupStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, void>> get requestFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$RequestCheckupStateImplCopyWith<_$RequestCheckupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
