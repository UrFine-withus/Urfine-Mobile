import 'package:bloc/bloc.dart';
import 'package:chatview/chatview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    on<_DietryChatEvent>((event, emit) async {
      print(state.chatController!.messageStreamController);

      state.chatController!.addMessage(
        Message(
          message: event.propt,
          createdAt: DateTime.now(),
          sendBy: "1",
          status: MessageStatus.delivered,
        ),
      );

      emit(state.copyWith(
        isTyping: true,
        messages: List.from(state.messages)
          ..add(
            Message(
              message: event.propt,
              createdAt: DateTime.now(),
              sendBy: "1",
              status: MessageStatus.delivered,
            ),
          ),
      ));
      final response = await _dietryPlanRepo.getGeminiResponse(event.propt);
      response.fold(
        (l) {
          state.chatController!.addMessage(
            Message(
              message: "Something went wrong!",
              createdAt: DateTime.now(),
              sendBy: "2",
              status: MessageStatus.delivered,
            ),
          );

          emit(state.copyWith(
            isTyping: false,
            messages: List.from(state.messages)
              ..add(
                Message(
                  message: "Something went wrong!",
                  createdAt: DateTime.now(),
                  sendBy: "2",
                  status: MessageStatus.delivered,
                ),
              ),
          ));
        },
        (r) {
          state.chatController!.addMessage(
            Message(
              message: r,
              createdAt: DateTime.now(),
              sendBy: "2",
              status: MessageStatus.delivered,
            ),
          );

          emit(state.copyWith(
            isTyping: false,
            messages: List.from(state.messages)
              ..add(
                Message(
                  message: r,
                  createdAt: DateTime.now(),
                  sendBy: "2",
                  status: MessageStatus.delivered,
                ),
              ),
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
  }
}
