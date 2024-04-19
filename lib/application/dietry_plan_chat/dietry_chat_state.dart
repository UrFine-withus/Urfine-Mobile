part of 'dietry_chat_bloc.dart';

@freezed
class DietryChatState with _$DietryChatState {
  const factory DietryChatState({
    required ChatController chatController,
    required bool isTyping,
  }) = _Initial;
  factory DietryChatState.initial() => DietryChatState(
        chatController: ChatController(
          initialMessageList: [
            Message(
              id: '1',
              message: "Hi, How can I help you",
              createdAt: DateTime.now(),
              sendBy: "2",
              status: MessageStatus.delivered,
            ),
          ],
          scrollController: ScrollController(),
          chatUsers: [
            ChatUser(id: '1', name: 'me'),
            ChatUser(
              id: '2',
              name: 'gemini',
            )
          ],
        ),
        isTyping: false,
      );
}
