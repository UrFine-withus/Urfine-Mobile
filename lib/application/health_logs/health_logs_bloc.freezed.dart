// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'health_logs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HealthLogsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fatchDates,
    required TResult Function(String date) fatchLogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fatchDates,
    TResult? Function(String date)? fatchLogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fatchDates,
    TResult Function(String date)? fatchLogs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FatchDates value) fatchDates,
    required TResult Function(_FatchLogs value) fatchLogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FatchDates value)? fatchDates,
    TResult? Function(_FatchLogs value)? fatchLogs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FatchDates value)? fatchDates,
    TResult Function(_FatchLogs value)? fatchLogs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthLogsEventCopyWith<$Res> {
  factory $HealthLogsEventCopyWith(
          HealthLogsEvent value, $Res Function(HealthLogsEvent) then) =
      _$HealthLogsEventCopyWithImpl<$Res, HealthLogsEvent>;
}

/// @nodoc
class _$HealthLogsEventCopyWithImpl<$Res, $Val extends HealthLogsEvent>
    implements $HealthLogsEventCopyWith<$Res> {
  _$HealthLogsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FatchDatesImplCopyWith<$Res> {
  factory _$$FatchDatesImplCopyWith(
          _$FatchDatesImpl value, $Res Function(_$FatchDatesImpl) then) =
      __$$FatchDatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FatchDatesImplCopyWithImpl<$Res>
    extends _$HealthLogsEventCopyWithImpl<$Res, _$FatchDatesImpl>
    implements _$$FatchDatesImplCopyWith<$Res> {
  __$$FatchDatesImplCopyWithImpl(
      _$FatchDatesImpl _value, $Res Function(_$FatchDatesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FatchDatesImpl implements _FatchDates {
  const _$FatchDatesImpl();

  @override
  String toString() {
    return 'HealthLogsEvent.fatchDates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FatchDatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fatchDates,
    required TResult Function(String date) fatchLogs,
  }) {
    return fatchDates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fatchDates,
    TResult? Function(String date)? fatchLogs,
  }) {
    return fatchDates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fatchDates,
    TResult Function(String date)? fatchLogs,
    required TResult orElse(),
  }) {
    if (fatchDates != null) {
      return fatchDates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FatchDates value) fatchDates,
    required TResult Function(_FatchLogs value) fatchLogs,
  }) {
    return fatchDates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FatchDates value)? fatchDates,
    TResult? Function(_FatchLogs value)? fatchLogs,
  }) {
    return fatchDates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FatchDates value)? fatchDates,
    TResult Function(_FatchLogs value)? fatchLogs,
    required TResult orElse(),
  }) {
    if (fatchDates != null) {
      return fatchDates(this);
    }
    return orElse();
  }
}

abstract class _FatchDates implements HealthLogsEvent {
  const factory _FatchDates() = _$FatchDatesImpl;
}

/// @nodoc
abstract class _$$FatchLogsImplCopyWith<$Res> {
  factory _$$FatchLogsImplCopyWith(
          _$FatchLogsImpl value, $Res Function(_$FatchLogsImpl) then) =
      __$$FatchLogsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$FatchLogsImplCopyWithImpl<$Res>
    extends _$HealthLogsEventCopyWithImpl<$Res, _$FatchLogsImpl>
    implements _$$FatchLogsImplCopyWith<$Res> {
  __$$FatchLogsImplCopyWithImpl(
      _$FatchLogsImpl _value, $Res Function(_$FatchLogsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$FatchLogsImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FatchLogsImpl implements _FatchLogs {
  const _$FatchLogsImpl(this.date);

  @override
  final String date;

  @override
  String toString() {
    return 'HealthLogsEvent.fatchLogs(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatchLogsImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatchLogsImplCopyWith<_$FatchLogsImpl> get copyWith =>
      __$$FatchLogsImplCopyWithImpl<_$FatchLogsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fatchDates,
    required TResult Function(String date) fatchLogs,
  }) {
    return fatchLogs(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fatchDates,
    TResult? Function(String date)? fatchLogs,
  }) {
    return fatchLogs?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fatchDates,
    TResult Function(String date)? fatchLogs,
    required TResult orElse(),
  }) {
    if (fatchLogs != null) {
      return fatchLogs(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FatchDates value) fatchDates,
    required TResult Function(_FatchLogs value) fatchLogs,
  }) {
    return fatchLogs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FatchDates value)? fatchDates,
    TResult? Function(_FatchLogs value)? fatchLogs,
  }) {
    return fatchLogs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FatchDates value)? fatchDates,
    TResult Function(_FatchLogs value)? fatchLogs,
    required TResult orElse(),
  }) {
    if (fatchLogs != null) {
      return fatchLogs(this);
    }
    return orElse();
  }
}

abstract class _FatchLogs implements HealthLogsEvent {
  const factory _FatchLogs(final String date) = _$FatchLogsImpl;

  String get date;
  @JsonKey(ignore: true)
  _$$FatchLogsImplCopyWith<_$FatchLogsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HealthLogsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DateTime> get dates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HealthLogsStateCopyWith<HealthLogsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthLogsStateCopyWith<$Res> {
  factory $HealthLogsStateCopyWith(
          HealthLogsState value, $Res Function(HealthLogsState) then) =
      _$HealthLogsStateCopyWithImpl<$Res, HealthLogsState>;
  @useResult
  $Res call({bool isLoading, List<DateTime> dates});
}

/// @nodoc
class _$HealthLogsStateCopyWithImpl<$Res, $Val extends HealthLogsState>
    implements $HealthLogsStateCopyWith<$Res> {
  _$HealthLogsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? dates = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthLogsStateImplCopyWith<$Res>
    implements $HealthLogsStateCopyWith<$Res> {
  factory _$$HealthLogsStateImplCopyWith(_$HealthLogsStateImpl value,
          $Res Function(_$HealthLogsStateImpl) then) =
      __$$HealthLogsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<DateTime> dates});
}

/// @nodoc
class __$$HealthLogsStateImplCopyWithImpl<$Res>
    extends _$HealthLogsStateCopyWithImpl<$Res, _$HealthLogsStateImpl>
    implements _$$HealthLogsStateImplCopyWith<$Res> {
  __$$HealthLogsStateImplCopyWithImpl(
      _$HealthLogsStateImpl _value, $Res Function(_$HealthLogsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? dates = null,
  }) {
    return _then(_$HealthLogsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dates: null == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
    ));
  }
}

/// @nodoc

class _$HealthLogsStateImpl implements _HealthLogsState {
  const _$HealthLogsStateImpl(
      {required this.isLoading, required final List<DateTime> dates})
      : _dates = dates;

  @override
  final bool isLoading;
  final List<DateTime> _dates;
  @override
  List<DateTime> get dates {
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dates);
  }

  @override
  String toString() {
    return 'HealthLogsState(isLoading: $isLoading, dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthLogsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_dates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthLogsStateImplCopyWith<_$HealthLogsStateImpl> get copyWith =>
      __$$HealthLogsStateImplCopyWithImpl<_$HealthLogsStateImpl>(
          this, _$identity);
}

abstract class _HealthLogsState implements HealthLogsState {
  const factory _HealthLogsState(
      {required final bool isLoading,
      required final List<DateTime> dates}) = _$HealthLogsStateImpl;

  @override
  bool get isLoading;
  @override
  List<DateTime> get dates;
  @override
  @JsonKey(ignore: true)
  _$$HealthLogsStateImplCopyWith<_$HealthLogsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
