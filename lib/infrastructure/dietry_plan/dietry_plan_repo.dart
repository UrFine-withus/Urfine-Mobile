import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:urfine/domain/dietry_plan/i_dietry_plan_repo.dart';
import 'package:urfine/domain/failure/failure.dart';

@LazySingleton(as: IDietryPlanRepo)
class DiertyPlanRepo extends IDietryPlanRepo {
  @override
  Future<Either<MainFailure, String>> getGeminiResponse(String propt) async {
    final apiKey = 'AIzaSyAfqXxzPHx3O993mPd0CqgQP_IYVSnO6PQ';
    if (apiKey == null) {
      print('No \$API_KEY environment variable');
      return left(MainFailure.otherFailure());
    }

    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final content = [Content.text(propt)];
    try {
      final response = await model.generateContent(content);
      log(response.text ??
          "Sorry for the inconvenience, please try again later.");
      String responseText = response.text ??
          "Sorry for the inconvenience, please try again later.";
      responseText = responseText.replaceAll("*", "");
      return right(responseText);
    } catch (e) {
      return left(MainFailure.otherFailure());
    }
  }
}