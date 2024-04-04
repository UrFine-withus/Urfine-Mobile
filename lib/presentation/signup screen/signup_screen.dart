import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/common_widgets/cylinder_decoration_widget.dart';
import 'package:urfine/presentation/common_widgets/large_gradient_button.dart';
import 'package:urfine/presentation/common_widgets/title_with_text_filed.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool otpSent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/signup/signup.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 44.w, right: 44.w, top: 100.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWithTextField(
                      type: TextFieldType.email,
                    ),
                    kHeight15,
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          //sending the otp to the user
                          setState(() {
                            otpSent = true;
                          });
                        },
                        child: Text(
                          "Send OTP",
                          style: TextStyle(
                            color: kLightColor,
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "OTP",
                      style: TextStyle(
                        fontSize: 17.0.sp,
                        color: kLightColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    kHeight10,
                    //using the otp widget to enter the otp
                    _OTPWidget(otpSent: otpSent),
                    SizedBox(
                      height: 50.h,
                    ),
                    //using the large gradient button widget with the text "Login" and passing the onPressed function as a function
                    Center(
                      child: Hero(
                        tag: 'button',
                        child: LargeGradientButton(
                          buttonText: 'Sign Up',
                          onPressed: () {
                            //navigating to the home screen
                            if (otpSent) {
                              Navigator.pushReplacementNamed(
                                  context, '/userDetails');
                            }
                          },
                        ),
                      ),
                    ),
                    kHeight15,
                    //using the cylinder decoration widget for just seperation
                    Center(child: const CylinderDecorationWidget()),
                    //button to navigate to the login screen for already registered users
                    const _LoginOption()
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

class _OTPWidget extends StatelessWidget {
  const _OTPWidget({
    super.key,
    required this.otpSent,
  });

  final bool otpSent;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 305.w,
      height: 53.h,
      duration: const Duration(milliseconds: 700),
      foregroundDecoration: BoxDecoration(
        color: otpSent ? Colors.white.withOpacity(0) : kExtraLightColor,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      decoration: BoxDecoration(
        boxShadow: otpSent
            ? <BoxShadow>[
                BoxShadow(
                  color: kExtraLightColor,
                  blurRadius: 16.0.r,
                  spreadRadius: 0.0.r,
                  offset: const Offset(0, 5),
                ),
              ]
            : null,
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: TextFormField(
        style: TextStyle(
          fontSize: 13.0.sp,
          color: kBlackColor,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 15.0.sp,
            color: const Color(0xff888888),
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: kWhiteColor,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.4)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.4)),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.4)),
            borderSide: BorderSide(
              color: kLightColor,
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginOption extends StatelessWidget {
  const _LoginOption();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already registered?",
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
              "Login",
              style: TextStyle(
                color: kLightColor,
                fontSize: 15.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        )
      ],
    );
  }
}
