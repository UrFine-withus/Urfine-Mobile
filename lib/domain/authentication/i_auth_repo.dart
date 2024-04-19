import 'package:dartz/dartz.dart';
import 'package:urfine/domain/failure/failure.dart';

abstract class IAuthRepo{
  Future<Either<MainFailure, void>> loginFirebase(String email, String password);
  Future<Either<MainFailure, String>> sendOtp(String email);
  Future<Either<MainFailure, void>> signupFirebase(String email, String password);
  Future<Either<MainFailure, void>> addUser(String email);
  Future<Either<MainFailure, void>> logout();
  Future<Either<MainFailure, void>> resetPassword(String email);
  Future<Either<MainFailure, void>> getUserName();
}