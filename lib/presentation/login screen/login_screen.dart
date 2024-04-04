import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/common_widgets/cylinder_decoration_widget.dart';
import 'package:urfine/presentation/common_widgets/large_gradient_button.dart';

import 'package:urfine/presentation/common_widgets/title_with_text_filed.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/login/login.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 106.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TitleWithTextField(
                      type: TextFieldType.email,
                    ),
                    kHeight15,
                    const TitleWithTextField(
                      type: TextFieldType.password,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    //using the large gradient button widget with the text "Login" and passing the onPressed function as a function
                    Hero(
                      tag: 'button',
                      child: LargeGradientButton(
                        buttonText: 'Login',
                        onPressed: () {
                          //navigating to the home screen
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                      ),
                    ),
                    kHeight15,
                    //using the cylinder decoration widget for just seperation
                    const CylinderDecorationWidget(),
                    //button to navigate to the singup screen for new users
                    const _SignUpOption()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignUpOption extends StatelessWidget {
  const _SignUpOption();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "New to UrFine?",
          style: TextStyle(
            color: kBlackColor,
            fontSize: 15.0.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 45.h,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: kLightColor,
            ),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: kLightColor,
                fontSize: 15.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              //navigating to the signup screen
              Navigator.pushReplacementNamed(context, '/signup');
            },
          ),
        )
      ],
    );
  }
}
