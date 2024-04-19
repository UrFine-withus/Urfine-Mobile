import 'package:dartz/dartz.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';

abstract class IUserDetailsRepo {
  Future<Either<MainFailure, void>> addUser(AddUserModel model);
}
