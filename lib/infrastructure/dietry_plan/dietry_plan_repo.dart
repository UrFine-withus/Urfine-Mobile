import 'dart:developer';
import 'package:chatview/chatview.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/dietry_plan/i_dietry_plan_repo.dart';
import 'package:urfine/domain/dietry_plan/model/message_db_model.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';

@LazySingleton(as: IDietryPlanRepo)
class DiertyPlanRepo extends IDietryPlanRepo {
  @override
  Future<Either<MainFailure, String>> getGeminiResponse(
      String propt, AddUserModel? user) async {
    final apiKey = dotenv.env['KEY'] ?? "";
    String input = "I am old and I am feeling weak.my question is $propt";
    if (user != null) {
      input =
          '''I am ${user.age} years old ${user.gender} and I am feeling weak.
          i have allergies of ${user.sufferedDiseases.allergies}.
          my height is ${user.height} and weight is ${user.weight}.
           i am a patient. i need to eat healthy food to maintain my health.
            Only indian food is available here.
             give me answer as you are my medical instructor.
              don't say you cant. i don't need a medical advice,
               just give some suggestions. my question is $propt''';
    }
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final content = [Content.text(input)];
    try {
      final response = await model.generateContent(content);
      log(response.text ??
          "Sorry for the inconvenience, please try again later.");
      String responseText = response.text ??
          "I can't understand your command, please try again later.";
      responseText = responseText.replaceAll("*", "");
      return right(responseText);
    } catch (e) {
      log(e.toString());
      return left(MainFailure.otherFailure());
    }
  }

  @override
  Future<List<Message>> getMessagesDb() async {
    final db = await Hive.openBox<MessageDBModel>('messages');
    final messages = db.values.toList();
    final messagesList = messages
        .map((e) => Message(
              id: e.id,
              message: e.message,
              createdAt: e.timestamp,
              sendBy: e.sender,
              status: MessageStatus.delivered,
            ))
        .toList();
    return messagesList;
  }

  @override
  Future saveMessageDb(Message message) async {
    final messageDBModel = MessageDBModel(
      id: message.id,
      message: message.message,
      timestamp: message.createdAt,
      sender: message.sendBy,
    );
    final db = await Hive.openBox<MessageDBModel>('messages');
    try {
      await db.add(messageDBModel);
    } catch (e) {
      log(e.toString());
    }
  }
}
