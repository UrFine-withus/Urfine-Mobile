part of 'dietry_chat_bloc.dart';

@freezed
class DietryChatState with _$DietryChatState {
  const factory DietryChatState({
    required List<Message> messages,
    required bool isOldMessagesRetrived,
    required bool isTyping,
    required bool isLoading,
    required ChatController? chatController,
    required AddUserModel? userDetails,
    required Option<Either<MainFailure, void>> userDetilasFailureOrSuccessOption,
  }) = _Initial;
  factory DietryChatState.initial() => DietryChatState(
        messages: [],
        isTyping: false,
        isOldMessagesRetrived: false,
        isLoading: false,
        chatController: null,
        userDetails: null,
        userDetilasFailureOrSuccessOption: none(),
      );
}
