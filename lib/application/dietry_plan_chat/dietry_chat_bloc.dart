import 'package:bloc/bloc.dart';
import 'package:chatview/chatview.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/dietry_plan/i_dietry_plan_repo.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/user_details/i_user_details_repo.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';

part 'dietry_chat_event.dart';
part 'dietry_chat_state.dart';
part 'dietry_chat_bloc.freezed.dart';

@injectable
class DietryChatBloc extends Bloc<DietryChatEvent, DietryChatState> {
  final IDietryPlanRepo _dietryPlanRepo;
  final IUserDetailsRepo _userDetailsRepo;
  DietryChatBloc(this._dietryPlanRepo, this._userDetailsRepo)
      : super(DietryChatState.initial()) {
    on<_DietryChatEvent>((event, emit) async {
      print(state.chatController!.messageStreamController);
      final currentMsg = Message(
        message: event.propt,
        createdAt: DateTime.now(),
        sendBy: "1",
        status: MessageStatus.delivered,
      );
      state.chatController!.addMessage(currentMsg);

      emit(state.copyWith(
        isTyping: true,
        messages: List.from(state.messages)..add(currentMsg),
      ));
      final response = await _dietryPlanRepo.getGeminiResponse(event.propt,state.userDetails);
      await _dietryPlanRepo.saveMessageDb(currentMsg);
      await response.fold(
        (l) async {
          final failureMsg = Message(
            message: "Something went wrong!",
            createdAt: DateTime.now(),
            sendBy: "2",
            status: MessageStatus.delivered,
          );
          state.chatController!.addMessage(failureMsg);
          await _dietryPlanRepo.saveMessageDb(failureMsg);
          emit(state.copyWith(
            isTyping: false,
            messages: List.from(state.messages)..add(failureMsg),
          ));
        },
        (r) async {
          final successMsg = Message(
            message: r,
            createdAt: DateTime.now(),
            sendBy: "2",
            status: MessageStatus.delivered,
          );
          state.chatController!.addMessage(successMsg);
          await _dietryPlanRepo.saveMessageDb(successMsg);
          emit(state.copyWith(
            isTyping: false,
            messages: List.from(state.messages)..add(successMsg),
          ));
        },
      );
    });
    on<_Init>((event, emit) {
      emit(state.copyWith(
        isTyping: false,
        chatController: event.chatController,
      ));
    });
    on<_RetriveMsgDb>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final messages = await _dietryPlanRepo.getMessagesDb();
      emit(state.copyWith(
        messages: messages,
        isOldMessagesRetrived: true,
        isLoading: false,
      ));
    });
    on<_FetchUserDetails>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final userDetails = await _userDetailsRepo.getUserDetails();
      userDetails.fold(
        (l) {
          emit(state.copyWith(
            isLoading: false,
            userDetilasFailureOrSuccessOption: some(left(l)),
          ));
        },
        (r) {
          emit(state.copyWith(
            isLoading: false,
            userDetails: r,
            userDetilasFailureOrSuccessOption: some(right(null)),
          ));
        },
      );
    });
  }
}
