part of 'dietry_chat_bloc.dart';

@freezed
class DietryChatState with _$DietryChatState {
  const factory DietryChatState({
    required List<Message> messages,
    required bool isTyping,
    final ChatController? chatController,
  }) = _Initial;
  factory DietryChatState.initial() => DietryChatState(
        messages: [],
        isTyping: false,
        chatController: null,
      );
}
