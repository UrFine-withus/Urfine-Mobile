// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddUserDataEvent {
  AddUserModel get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUserDataEventCopyWith<AddUserDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserDataEventCopyWith<$Res> {
  factory $AddUserDataEventCopyWith(
          AddUserDataEvent value, $Res Function(AddUserDataEvent) then) =
      _$AddUserDataEventCopyWithImpl<$Res, AddUserDataEvent>;
  @useResult
  $Res call({AddUserModel model});
}

/// @nodoc
class _$AddUserDataEventCopyWithImpl<$Res, $Val extends AddUserDataEvent>
    implements $AddUserDataEventCopyWith<$Res> {
  _$AddUserDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AddUserModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUserDataEventImplCopyWith<$Res>
    implements $AddUserDataEventCopyWith<$Res> {
  factory _$$AddUserDataEventImplCopyWith(_$AddUserDataEventImpl value,
          $Res Function(_$AddUserDataEventImpl) then) =
      __$$AddUserDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddUserModel model});
}

/// @nodoc
class __$$AddUserDataEventImplCopyWithImpl<$Res>
    extends _$AddUserDataEventCopyWithImpl<$Res, _$AddUserDataEventImpl>
    implements _$$AddUserDataEventImplCopyWith<$Res> {
  __$$AddUserDataEventImplCopyWithImpl(_$AddUserDataEventImpl _value,
      $Res Function(_$AddUserDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddUserDataEventImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AddUserModel,
    ));
  }
}

/// @nodoc

class _$AddUserDataEventImpl implements _AddUserDataEvent {
  const _$AddUserDataEventImpl(this.model);

  @override
  final AddUserModel model;

  @override
  String toString() {
    return 'AddUserDataEvent(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserDataEventImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserDataEventImplCopyWith<_$AddUserDataEventImpl> get copyWith =>
      __$$AddUserDataEventImplCopyWithImpl<_$AddUserDataEventImpl>(
          this, _$identity);
}

abstract class _AddUserDataEvent implements AddUserDataEvent {
  const factory _AddUserDataEvent(final AddUserModel model) =
      _$AddUserDataEventImpl;

  @override
  AddUserModel get model;
  @override
  @JsonKey(ignore: true)
  _$$AddUserDataEventImplCopyWith<_$AddUserDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUserDataState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<MainFailure, void>> get addUserDataOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddUserDataStateCopyWith<AddUserDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserDataStateCopyWith<$Res> {
  factory $AddUserDataStateCopyWith(
          AddUserDataState value, $Res Function(AddUserDataState) then) =
      _$AddUserDataStateCopyWithImpl<$Res, AddUserDataState>;
  @useResult
  $Res call(
      {bool isSubmitting, Option<Either<MainFailure, void>> addUserDataOption});
}

/// @nodoc
class _$AddUserDataStateCopyWithImpl<$Res, $Val extends AddUserDataState>
    implements $AddUserDataStateCopyWith<$Res> {
  _$AddUserDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? addUserDataOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      addUserDataOption: null == addUserDataOption
          ? _value.addUserDataOption
          : addUserDataOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddUserDataStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting, Option<Either<MainFailure, void>> addUserDataOption});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddUserDataStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? addUserDataOption = null,
  }) {
    return _then(_$InitialImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      addUserDataOption: null == addUserDataOption
          ? _value.addUserDataOption
          : addUserDataOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, void>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isSubmitting, required this.addUserDataOption});

  @override
  final bool isSubmitting;
  @override
  final Option<Either<MainFailure, void>> addUserDataOption;

  @override
  String toString() {
    return 'AddUserDataState(isSubmitting: $isSubmitting, addUserDataOption: $addUserDataOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.addUserDataOption, addUserDataOption) ||
                other.addUserDataOption == addUserDataOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, addUserDataOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AddUserDataState {
  const factory _Initial(
          {required final bool isSubmitting,
          required final Option<Either<MainFailure, void>> addUserDataOption}) =
      _$InitialImpl;

  @override
  bool get isSubmitting;
  @override
  Option<Either<MainFailure, void>> get addUserDataOption;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
