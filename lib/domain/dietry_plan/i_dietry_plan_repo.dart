

import 'package:dartz/dartz.dart';
import 'package:urfine/domain/failure/failure.dart';

abstract class IDietryPlanRepo {
  Future<Either<MainFailure,String>> getGeminiResponse(String propt);
}
