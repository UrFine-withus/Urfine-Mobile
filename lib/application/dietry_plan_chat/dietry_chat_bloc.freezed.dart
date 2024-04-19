// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dietry_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DietryChatEvent {
  String get propt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DietryChatEventCopyWith<DietryChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietryChatEventCopyWith<$Res> {
  factory $DietryChatEventCopyWith(
          DietryChatEvent value, $Res Function(DietryChatEvent) then) =
      _$DietryChatEventCopyWithImpl<$Res, DietryChatEvent>;
  @useResult
  $Res call({String propt});
}

/// @nodoc
class _$DietryChatEventCopyWithImpl<$Res, $Val extends DietryChatEvent>
    implements $DietryChatEventCopyWith<$Res> {
  _$DietryChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propt = null,
  }) {
    return _then(_value.copyWith(
      propt: null == propt
          ? _value.propt
          : propt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DietryChatEventImplCopyWith<$Res>
    implements $DietryChatEventCopyWith<$Res> {
  factory _$$DietryChatEventImplCopyWith(_$DietryChatEventImpl value,
          $Res Function(_$DietryChatEventImpl) then) =
      __$$DietryChatEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String propt});
}

/// @nodoc
class __$$DietryChatEventImplCopyWithImpl<$Res>
    extends _$DietryChatEventCopyWithImpl<$Res, _$DietryChatEventImpl>
    implements _$$DietryChatEventImplCopyWith<$Res> {
  __$$DietryChatEventImplCopyWithImpl(
      _$DietryChatEventImpl _value, $Res Function(_$DietryChatEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propt = null,
  }) {
    return _then(_$DietryChatEventImpl(
      null == propt
          ? _value.propt
          : propt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DietryChatEventImpl implements _DietryChatEvent {
  const _$DietryChatEventImpl(this.propt);

  @override
  final String propt;

  @override
  String toString() {
    return 'DietryChatEvent(propt: $propt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DietryChatEventImpl &&
            (identical(other.propt, propt) || other.propt == propt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, propt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DietryChatEventImplCopyWith<_$DietryChatEventImpl> get copyWith =>
      __$$DietryChatEventImplCopyWithImpl<_$DietryChatEventImpl>(
          this, _$identity);
}

abstract class _DietryChatEvent implements DietryChatEvent {
  const factory _DietryChatEvent(final String propt) = _$DietryChatEventImpl;

  @override
  String get propt;
  @override
  @JsonKey(ignore: true)
  _$$DietryChatEventImplCopyWith<_$DietryChatEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DietryChatState {
  ChatController get chatController => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DietryChatStateCopyWith<DietryChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietryChatStateCopyWith<$Res> {
  factory $DietryChatStateCopyWith(
          DietryChatState value, $Res Function(DietryChatState) then) =
      _$DietryChatStateCopyWithImpl<$Res, DietryChatState>;
  @useResult
  $Res call({ChatController chatController, bool isTyping});
}

/// @nodoc
class _$DietryChatStateCopyWithImpl<$Res, $Val extends DietryChatState>
    implements $DietryChatStateCopyWith<$Res> {
  _$DietryChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatController = null,
    Object? isTyping = null,
  }) {
    return _then(_value.copyWith(
      chatController: null == chatController
          ? _value.chatController
          : chatController // ignore: cast_nullable_to_non_nullable
              as ChatController,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DietryChatStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatController chatController, bool isTyping});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DietryChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatController = null,
    Object? isTyping = null,
  }) {
    return _then(_$InitialImpl(
      chatController: null == chatController
          ? _value.chatController
          : chatController // ignore: cast_nullable_to_non_nullable
              as ChatController,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.chatController, required this.isTyping});

  @override
  final ChatController chatController;
  @override
  final bool isTyping;

  @override
  String toString() {
    return 'DietryChatState(chatController: $chatController, isTyping: $isTyping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.chatController, chatController) ||
                other.chatController == chatController) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatController, isTyping);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements DietryChatState {
  const factory _Initial(
      {required final ChatController chatController,
      required final bool isTyping}) = _$InitialImpl;

  @override
  ChatController get chatController;
  @override
  bool get isTyping;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
