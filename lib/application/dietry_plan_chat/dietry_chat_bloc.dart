import 'package:bloc/bloc.dart';
import 'package:chatview/chatview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/dietry_plan/i_dietry_plan_repo.dart';

part 'dietry_chat_event.dart';
part 'dietry_chat_state.dart';
part 'dietry_chat_bloc.freezed.dart';

@injectable
class DietryChatBloc extends Bloc<DietryChatEvent, DietryChatState> {
  final IDietryPlanRepo _dietryPlanRepo;
  DietryChatBloc(this._dietryPlanRepo) : super(DietryChatState.initial()) {
    on<DietryChatEvent>((event, emit) async {
      state.chatController.addMessage(
        Message(
          message: event.propt,
          createdAt: DateTime.now(),
          sendBy: "1",
          status: MessageStatus.delivered,
        ),
      );
      emit(state.copyWith(
        isTyping: true,
      ));
      final response = await _dietryPlanRepo.getGeminiResponse(event.propt);
      response.fold(
        (l) {
          state.chatController.addMessage(
            Message(
              message: "Something went wrong!",
              createdAt: DateTime.now(),
              sendBy: "2",
              status: MessageStatus.delivered,
            ),
          );
          emit(state.copyWith(
            isTyping: false,
          ));
        },
        (r) {
          state.chatController.addMessage(
            Message(
              message: r,
              createdAt: DateTime.now(),
              sendBy: "2",
              status: MessageStatus.delivered,
            ),
          );
          emit(state.copyWith(
            isTyping: false,
          ));
        },
      );
    });
  }
}
