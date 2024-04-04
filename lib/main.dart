import 'package:flutter/material.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/emergency/emergency_contacts_screen.dart';
import 'package:urfine/presentation/home/home_screen.dart';
import 'package:urfine/presentation/login%20screen/login_screen.dart';
import 'package:urfine/presentation/request%20screen/request_screen.dart';
import 'package:urfine/presentation/signup%20screen/signup_screen.dart';
import 'package:urfine/presentation/splash%20screen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/user%20details/user_details.dart';

main(List<String> args) async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //initializing the screen util package to change the size of the widgets according to the screen size
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UrFine',

        theme: ThemeData(
          fontFamily: 'Inter',
          //setting white colour as the default background colour of all pages
          scaffoldBackgroundColor: kWhiteColor,
        ),
        //setting the initial route to the splash screen
        home: RequestScreen(),

        onGenerateRoute: (settings) {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              if (settings.name == '/login') {
                return const LoginScreen();
              } else if (settings.name == '/signup') {
                return const SignUpScreen();
              } else if (settings.name == '/userDetails') {
                return const UserDetailsScreen();
              } else if (settings.name == '/splash') {
                return const SplashScreen();
              } else if (settings.name == '/home') {
                return HomeScreen();
              } else if (settings.name == '/emergency') {
                return EmergencyContactsScreen();
              }
              return const SizedBox();
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            transitionDuration: Duration(milliseconds: 280),
          );
        },
      ),
    );
  }
}
