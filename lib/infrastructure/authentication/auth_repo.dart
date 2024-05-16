import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:urfine/core/base_url.dart';

import 'package:urfine/domain/authentication/i_auth_repo.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'dart:math';
import 'dart:developer' as dev;

import 'package:urfine/domain/token_manager/user_data_model.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepository extends IAuthRepo {
  @override
  Future<Either<MainFailure, void>> loginFirebase(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Store user UID in UserDataModel
      getIt.get<UserDataModel>().uid = userCredential.user?.uid ?? "";
      return right(null);
    } catch (e) {
      dev.log(e.toString());
      if (e is FirebaseAuthException) {
        dev.log(e.code);
        switch (e.code) {
          case 'user-not-found':
            return left(
                const MainFailure.authFailure("No user found with this email"));
          case 'wrong-password':
            return left(const MainFailure.authFailure("Incorrect password"));
          case 'invalid-email':
            return left(const MainFailure.authFailure("Invalid email"));
          case 'invalid-credential':
            return left(const MainFailure.authFailure("Invalid credentials"));
        }
      }
      return left(const MainFailure.otherFailure());
    }
  }

  int generateNonZeroStartingSixDigitNumber() {
    Random random = Random();
    int number = 100000 + random.nextInt(900000);
    return number;
  }

  @override
  Future<Either<MainFailure, String>> sendOtp(String email) async {
    final otp = generateNonZeroStartingSixDigitNumber();
    String username = 'javalab4us@gmail.com';
    String password = 'xyaf mfyc qwvk hzdj';
    final smtpServer = gmail(username, password);
    // Create our message.
    final message = Message()
      ..from = Address(username, 'UrFine')
      ..recipients.add(email)
      ..subject = 'OTP for Urfine App'
      ..html = getHtmlCode(otp);

    try {
      await send(message, smtpServer);
      return right(otp.toString());
    } on MailerException catch (e) {
      dev.log(e.toString());
      return left(MainFailure.serverFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> signupFirebase(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      getIt.get<UserDataModel>().uid = userCredential.user?.uid ?? "";
      return right(null);
    } catch (e) {
      dev.log(e.toString());
      if (e is FirebaseAuthException) {
        dev.log(e.code);
        switch (e.code) {
          case 'email-already-in-use':
            return left(const MainFailure.authFailure("Email already in use"));
          case 'invalid-email':
            return left(const MainFailure.authFailure("Invalid email"));
          case 'weak-password':
            return left(const MainFailure.authFailure("Weak password"));
        }
      }
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> addUser(String email) async {
    final uid = getIt.get<UserDataModel>().uid;
    final id = await FirebaseMessaging.instance.getToken();
    try {
      final response = await Dio(BaseOptions()).post(
        '$baseUrl/userdata',
        data: {
          'email': email,
          '_userID': uid,
          'fcm_id': id,
        },
      );
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      dev.log(e.toString());
      if (e is DioException && e.response?.statusCode == 400) {
        return left(const MainFailure.otherFailure());
      } else if (e is DioException && e.response?.statusCode == 500 ||
          e is DioException && e.response?.statusCode == 501) {
        return left(const MainFailure.serverFailure());
      } else {
        return left(const MainFailure.clientFailure());
      }
    }
  }

  String getHtmlCode(int otp) {
    return '''<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Send Hi</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #ffffff; 
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: #FFE3DC; 
        border-radius: 8px;
        border: 2px solid #FFE3DC; /* primary color */
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    h1 {
      color: #FF9D86;
        font-weight: 900;
        text-align: center;
        margin-bottom: 20px;
    }
    
    p{
        font-size: 16px;
        line-height: 1.5;
        text-align: center;
    }
</style>
</head>
<body>

<div class="container">
<p>Thankyou for choosing our app</p>
    <h2>Your OTP for UrFIne</h2>
    <h1>$otp</h1>
    
</div>

</body>
</html>''';
  }

  @override
  Future<Either<MainFailure, void>> getUserName() async {
    final uid = getIt.get<UserDataModel>().uid;
    final id = await FirebaseMessaging.instance.getToken();
    dev.log(uid);
    try {
      final response = await Dio(BaseOptions()).patch(
        '$baseUrl/userdata/check?userId=$uid',
        data: {
          "fcm_id": id,
        },
      );
      if (response.statusCode == 200) {
        final String name =
            response.data.containsKey('name') ? response.data['name'] : "";
        getIt.get<UserDataModel>().name = name;
        return right(null);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      dev.log(e.toString());
      if (e is DioException && e.response?.statusCode == 400) {
        return left(const MainFailure.otherFailure());
      } else if (e is DioException && e.response?.statusCode == 500 ||
          e is DioException && e.response?.statusCode == 501) {
        return left(const MainFailure.serverFailure());
      } else {
        return left(const MainFailure.clientFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, void>> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return right(null);
    } catch (e) {
      dev.log(e.toString());
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return right(null);
      // Password reset email sent successfully
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthExceptions
      if (e.code == 'invalid-email') {
        return left(const MainFailure.authFailure("Invalid email"));
      } else if (e.code == 'user-not-found') {
        return left(
            const MainFailure.authFailure("No user found with this email"));
      } else {
        return left(const MainFailure.otherFailure());
      }
    } catch (e) {
      // Handle other exceptions
      return left(const MainFailure.otherFailure());
    }
  }
}
