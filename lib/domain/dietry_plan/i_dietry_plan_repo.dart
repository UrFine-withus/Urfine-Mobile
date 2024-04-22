import 'package:chatview/chatview.dart';
import 'package:dartz/dartz.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';

abstract class IDietryPlanRepo {
  Future<Either<MainFailure, String>> getGeminiResponse(String propt, AddUserModel? user);
  Future< List<Message>> getMessagesDb();
  Future saveMessageDb(Message message);
}
