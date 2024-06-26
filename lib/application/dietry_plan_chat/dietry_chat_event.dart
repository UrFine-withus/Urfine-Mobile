part of 'dietry_chat_bloc.dart';

@freezed
class DietryChatEvent with _$DietryChatEvent {
  const factory DietryChatEvent(String propt) = _DietryChatEvent;
  const factory DietryChatEvent.init(ChatController chatController) = _Init;
  const factory DietryChatEvent.retriveMsgDb() = _RetriveMsgDb;
  const factory DietryChatEvent.fetchUserDetails() = _FetchUserDetails;
}