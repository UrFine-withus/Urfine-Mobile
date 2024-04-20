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
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String propt) $default, {
    required TResult Function(ChatController chatController) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String propt)? $default, {
    TResult? Function(ChatController chatController)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String propt)? $default, {
    TResult Function(ChatController chatController)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DietryChatEvent value) $default, {
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DietryChatEvent value)? $default, {
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DietryChatEvent value)? $default, {
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietryChatEventCopyWith<$Res> {
  factory $DietryChatEventCopyWith(
          DietryChatEvent value, $Res Function(DietryChatEvent) then) =
      _$DietryChatEventCopyWithImpl<$Res, DietryChatEvent>;
}

/// @nodoc
class _$DietryChatEventCopyWithImpl<$Res, $Val extends DietryChatEvent>
    implements $DietryChatEventCopyWith<$Res> {
  _$DietryChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DietryChatEventImplCopyWith<$Res> {
  factory _$$DietryChatEventImplCopyWith(_$DietryChatEventImpl value,
          $Res Function(_$DietryChatEventImpl) then) =
      __$$DietryChatEventImplCopyWithImpl<$Res>;
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String propt) $default, {
    required TResult Function(ChatController chatController) init,
  }) {
    return $default(propt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String propt)? $default, {
    TResult? Function(ChatController chatController)? init,
  }) {
    return $default?.call(propt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String propt)? $default, {
    TResult Function(ChatController chatController)? init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(propt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DietryChatEvent value) $default, {
    required TResult Function(_Init value) init,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DietryChatEvent value)? $default, {
    TResult? Function(_Init value)? init,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DietryChatEvent value)? $default, {
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _DietryChatEvent implements DietryChatEvent {
  const factory _DietryChatEvent(final String propt) = _$DietryChatEventImpl;

  String get propt;
  @JsonKey(ignore: true)
  _$$DietryChatEventImplCopyWith<_$DietryChatEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatController chatController});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$DietryChatEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatController = null,
  }) {
    return _then(_$InitImpl(
      null == chatController
          ? _value.chatController
          : chatController // ignore: cast_nullable_to_non_nullable
              as ChatController,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.chatController);

  @override
  final ChatController chatController;

  @override
  String toString() {
    return 'DietryChatEvent.init(chatController: $chatController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.chatController, chatController) ||
                other.chatController == chatController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String propt) $default, {
    required TResult Function(ChatController chatController) init,
  }) {
    return init(chatController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String propt)? $default, {
    TResult? Function(ChatController chatController)? init,
  }) {
    return init?.call(chatController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String propt)? $default, {
    TResult Function(ChatController chatController)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(chatController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DietryChatEvent value) $default, {
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DietryChatEvent value)? $default, {
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DietryChatEvent value)? $default, {
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DietryChatEvent {
  const factory _Init(final ChatController chatController) = _$InitImpl;

  ChatController get chatController;
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DietryChatState {
  List<Message> get messages => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;
  ChatController? get chatController => throw _privateConstructorUsedError;

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
  $Res call(
      {List<Message> messages, bool isTyping, ChatController? chatController});
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
    Object? messages = null,
    Object? isTyping = null,
    Object? chatController = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      chatController: freezed == chatController
          ? _value.chatController
          : chatController // ignore: cast_nullable_to_non_nullable
              as ChatController?,
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
  $Res call(
      {List<Message> messages, bool isTyping, ChatController? chatController});
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
    Object? messages = null,
    Object? isTyping = null,
    Object? chatController = freezed,
  }) {
    return _then(_$InitialImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      chatController: freezed == chatController
          ? _value.chatController
          : chatController // ignore: cast_nullable_to_non_nullable
              as ChatController?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<Message> messages,
      required this.isTyping,
      this.chatController})
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final bool isTyping;
  @override
  final ChatController? chatController;

  @override
  String toString() {
    return 'DietryChatState(messages: $messages, isTyping: $isTyping, chatController: $chatController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            (identical(other.chatController, chatController) ||
                other.chatController == chatController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), isTyping, chatController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements DietryChatState {
  const factory _Initial(
      {required final List<Message> messages,
      required final bool isTyping,
      final ChatController? chatController}) = _$InitialImpl;

  @override
  List<Message> get messages;
  @override
  bool get isTyping;
  @override
  ChatController? get chatController;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
