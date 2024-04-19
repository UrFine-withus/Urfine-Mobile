// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmergencyContactsEvent {
  EmergencyContactType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmergencyContactsEventCopyWith<EmergencyContactsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyContactsEventCopyWith<$Res> {
  factory $EmergencyContactsEventCopyWith(EmergencyContactsEvent value,
          $Res Function(EmergencyContactsEvent) then) =
      _$EmergencyContactsEventCopyWithImpl<$Res, EmergencyContactsEvent>;
  @useResult
  $Res call({EmergencyContactType type});
}

/// @nodoc
class _$EmergencyContactsEventCopyWithImpl<$Res,
        $Val extends EmergencyContactsEvent>
    implements $EmergencyContactsEventCopyWith<$Res> {
  _$EmergencyContactsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EmergencyContactType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $EmergencyContactsEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmergencyContactType type});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$EmergencyContactsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$StartedImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as EmergencyContactType,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.type});

  @override
  final EmergencyContactType type;

  @override
  String toString() {
    return 'EmergencyContactsEvent(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);
}

abstract class _Started implements EmergencyContactsEvent {
  const factory _Started({required final EmergencyContactType type}) =
      _$StartedImpl;

  @override
  EmergencyContactType get type;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmergencyContactsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<EmergencyContact> get hospitalContacts =>
      throw _privateConstructorUsedError;
  List<EmergencyContact> get bloodBankContacts =>
      throw _privateConstructorUsedError;
  List<EmergencyContact> get ambulanceContacts =>
      throw _privateConstructorUsedError;
  List<EmergencyContact> get clinicContacts =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, EmergencyModel>>
      get emergencyContactsFailureorSuccess =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmergencyContactsStateCopyWith<EmergencyContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyContactsStateCopyWith<$Res> {
  factory $EmergencyContactsStateCopyWith(EmergencyContactsState value,
          $Res Function(EmergencyContactsState) then) =
      _$EmergencyContactsStateCopyWithImpl<$Res, EmergencyContactsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<EmergencyContact> hospitalContacts,
      List<EmergencyContact> bloodBankContacts,
      List<EmergencyContact> ambulanceContacts,
      List<EmergencyContact> clinicContacts,
      Option<Either<MainFailure, EmergencyModel>>
          emergencyContactsFailureorSuccess});
}

/// @nodoc
class _$EmergencyContactsStateCopyWithImpl<$Res,
        $Val extends EmergencyContactsState>
    implements $EmergencyContactsStateCopyWith<$Res> {
  _$EmergencyContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hospitalContacts = null,
    Object? bloodBankContacts = null,
    Object? ambulanceContacts = null,
    Object? clinicContacts = null,
    Object? emergencyContactsFailureorSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hospitalContacts: null == hospitalContacts
          ? _value.hospitalContacts
          : hospitalContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      bloodBankContacts: null == bloodBankContacts
          ? _value.bloodBankContacts
          : bloodBankContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      ambulanceContacts: null == ambulanceContacts
          ? _value.ambulanceContacts
          : ambulanceContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      clinicContacts: null == clinicContacts
          ? _value.clinicContacts
          : clinicContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      emergencyContactsFailureorSuccess: null ==
              emergencyContactsFailureorSuccess
          ? _value.emergencyContactsFailureorSuccess
          : emergencyContactsFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, EmergencyModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmergencyContactsStateImplCopyWith<$Res>
    implements $EmergencyContactsStateCopyWith<$Res> {
  factory _$$EmergencyContactsStateImplCopyWith(
          _$EmergencyContactsStateImpl value,
          $Res Function(_$EmergencyContactsStateImpl) then) =
      __$$EmergencyContactsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<EmergencyContact> hospitalContacts,
      List<EmergencyContact> bloodBankContacts,
      List<EmergencyContact> ambulanceContacts,
      List<EmergencyContact> clinicContacts,
      Option<Either<MainFailure, EmergencyModel>>
          emergencyContactsFailureorSuccess});
}

/// @nodoc
class __$$EmergencyContactsStateImplCopyWithImpl<$Res>
    extends _$EmergencyContactsStateCopyWithImpl<$Res,
        _$EmergencyContactsStateImpl>
    implements _$$EmergencyContactsStateImplCopyWith<$Res> {
  __$$EmergencyContactsStateImplCopyWithImpl(
      _$EmergencyContactsStateImpl _value,
      $Res Function(_$EmergencyContactsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hospitalContacts = null,
    Object? bloodBankContacts = null,
    Object? ambulanceContacts = null,
    Object? clinicContacts = null,
    Object? emergencyContactsFailureorSuccess = null,
  }) {
    return _then(_$EmergencyContactsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hospitalContacts: null == hospitalContacts
          ? _value._hospitalContacts
          : hospitalContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      bloodBankContacts: null == bloodBankContacts
          ? _value._bloodBankContacts
          : bloodBankContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      ambulanceContacts: null == ambulanceContacts
          ? _value._ambulanceContacts
          : ambulanceContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      clinicContacts: null == clinicContacts
          ? _value._clinicContacts
          : clinicContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      emergencyContactsFailureorSuccess: null ==
              emergencyContactsFailureorSuccess
          ? _value.emergencyContactsFailureorSuccess
          : emergencyContactsFailureorSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, EmergencyModel>>,
    ));
  }
}

/// @nodoc

class _$EmergencyContactsStateImpl implements _EmergencyContactsState {
  const _$EmergencyContactsStateImpl(
      {required this.isLoading,
      required final List<EmergencyContact> hospitalContacts,
      required final List<EmergencyContact> bloodBankContacts,
      required final List<EmergencyContact> ambulanceContacts,
      required final List<EmergencyContact> clinicContacts,
      required this.emergencyContactsFailureorSuccess})
      : _hospitalContacts = hospitalContacts,
        _bloodBankContacts = bloodBankContacts,
        _ambulanceContacts = ambulanceContacts,
        _clinicContacts = clinicContacts;

  @override
  final bool isLoading;
  final List<EmergencyContact> _hospitalContacts;
  @override
  List<EmergencyContact> get hospitalContacts {
    if (_hospitalContacts is EqualUnmodifiableListView)
      return _hospitalContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hospitalContacts);
  }

  final List<EmergencyContact> _bloodBankContacts;
  @override
  List<EmergencyContact> get bloodBankContacts {
    if (_bloodBankContacts is EqualUnmodifiableListView)
      return _bloodBankContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bloodBankContacts);
  }

  final List<EmergencyContact> _ambulanceContacts;
  @override
  List<EmergencyContact> get ambulanceContacts {
    if (_ambulanceContacts is EqualUnmodifiableListView)
      return _ambulanceContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ambulanceContacts);
  }

  final List<EmergencyContact> _clinicContacts;
  @override
  List<EmergencyContact> get clinicContacts {
    if (_clinicContacts is EqualUnmodifiableListView) return _clinicContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clinicContacts);
  }

  @override
  final Option<Either<MainFailure, EmergencyModel>>
      emergencyContactsFailureorSuccess;

  @override
  String toString() {
    return 'EmergencyContactsState(isLoading: $isLoading, hospitalContacts: $hospitalContacts, bloodBankContacts: $bloodBankContacts, ambulanceContacts: $ambulanceContacts, clinicContacts: $clinicContacts, emergencyContactsFailureorSuccess: $emergencyContactsFailureorSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyContactsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._hospitalContacts, _hospitalContacts) &&
            const DeepCollectionEquality()
                .equals(other._bloodBankContacts, _bloodBankContacts) &&
            const DeepCollectionEquality()
                .equals(other._ambulanceContacts, _ambulanceContacts) &&
            const DeepCollectionEquality()
                .equals(other._clinicContacts, _clinicContacts) &&
            (identical(other.emergencyContactsFailureorSuccess,
                    emergencyContactsFailureorSuccess) ||
                other.emergencyContactsFailureorSuccess ==
                    emergencyContactsFailureorSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_hospitalContacts),
      const DeepCollectionEquality().hash(_bloodBankContacts),
      const DeepCollectionEquality().hash(_ambulanceContacts),
      const DeepCollectionEquality().hash(_clinicContacts),
      emergencyContactsFailureorSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyContactsStateImplCopyWith<_$EmergencyContactsStateImpl>
      get copyWith => __$$EmergencyContactsStateImplCopyWithImpl<
          _$EmergencyContactsStateImpl>(this, _$identity);
}

abstract class _EmergencyContactsState implements EmergencyContactsState {
  const factory _EmergencyContactsState(
      {required final bool isLoading,
      required final List<EmergencyContact> hospitalContacts,
      required final List<EmergencyContact> bloodBankContacts,
      required final List<EmergencyContact> ambulanceContacts,
      required final List<EmergencyContact> clinicContacts,
      required final Option<Either<MainFailure, EmergencyModel>>
          emergencyContactsFailureorSuccess}) = _$EmergencyContactsStateImpl;

  @override
  bool get isLoading;
  @override
  List<EmergencyContact> get hospitalContacts;
  @override
  List<EmergencyContact> get bloodBankContacts;
  @override
  List<EmergencyContact> get ambulanceContacts;
  @override
  List<EmergencyContact> get clinicContacts;
  @override
  Option<Either<MainFailure, EmergencyModel>>
      get emergencyContactsFailureorSuccess;
  @override
  @JsonKey(ignore: true)
  _$$EmergencyContactsStateImplCopyWith<_$EmergencyContactsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
