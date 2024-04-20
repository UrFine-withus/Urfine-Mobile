import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/authentication/authentication_bloc.dart';
import 'package:urfine/domain/failure/failure.dart';
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
  bool isOtpVerified = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> passwordObscure = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          state.sendOtpFailureOrSuccessOption.fold(() {}, (a) {
            a.fold((l) {
              showUrFineSnackbar(context, "invalid email");
            }, (r) {
              setState(() {
                otpSent = true;
              });
            });
          });
          state.signupFailureOrSuccessOption.fold(() {}, (a) {
            a.fold((l) {
              if (l is AuthFailure) {
                showUrFineSnackbar(context, l.message);
              } else {
                showUrFineSnackbar(context, "Something went wrong");
              }
            }, (r) {
              Navigator.pushReplacementNamed(context, '/userDetails');
            });
          });
        },
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image(
                          image: AssetImage('assets/signup/signup.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 44.w, right: 44.w, top: 100.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleWithTextField(
                              type: TextFieldType.email,
                              controller: emailController,
                            ),
                            kHeight15,
                            Visibility(
                              visible: !isOtpVerified,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    emailController.text =
                                        emailController.text.trim();
                                    if (emailController.text.isEmpty) {
                                      showUrFineSnackbar(
                                          context, "Enter a valid email");
                                      return;
                                    }
                                    FocusScope.of(context).unfocus();
                                    //sending the otp to the user
                                    BlocProvider.of<AuthenticationBloc>(context)
                                        .add(AuthenticationEvent.sendOtp(
                                            emailController.text));
                                  },
                                  child: Text(
                                    otpSent ? "Resend OTP" : "Send OTP",
                                    style: TextStyle(
                                      color: kLightColor,
                                      fontSize: 13.0.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (!isOtpVerified)
                              Text(
                                "OTP",
                                style: TextStyle(
                                  fontSize: 17.0.sp,
                                  color: kLightColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            if (!isOtpVerified) kHeight10,
                            //using the otp widget to enter the otp
                            if (!isOtpVerified)
                              _OTPWidget(
                                otpSent: otpSent,
                                otpController: passwordController,
                                keyboardType: TextInputType.number,
                              ),
                            if (isOtpVerified)
                              TitleWithTextField(
                                type: TextFieldType.password,
                                controller: passwordController,
                                obscureText: passwordObscure,
                              ),
                            SizedBox(
                              height: 50.h,
                            ),
                            //using the large gradient button widget with the text "Login" and passing the onPressed function as a function
                            Center(
                              child: Hero(
                                tag: 'button',
                                child: LargeGradientButton(
                                  buttonText:
                                      isOtpVerified ? 'Sign Up' : "Verify OTP",
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    //checking checking email is entered to send otp
                                    if (!otpSent && !isOtpVerified) {
                                      showUrFineSnackbar(
                                          context, "Verify your email first");
                                      return;
                                    }
                                    //checking password is entered and signing up the user
                                    if (otpSent && isOtpVerified) {
                                      if (passwordController.text.isEmpty ||
                                          passwordController.text.length < 6) {
                                        showUrFineSnackbar(
                                            context, "Enter a valid password");
                                        return;
                                      } else {
                                        BlocProvider.of<AuthenticationBloc>(
                                                context)
                                            .add(AuthenticationEvent
                                                .signupWithFirebase(
                                                    emailController.text,
                                                    passwordController.text));
                                      }
                                    }
                                    //checking otp is entered and verifying the otp
                                    if (otpSent && !isOtpVerified) {
                                      if (passwordController.text.isEmpty) {
                                        showUrFineSnackbar(
                                            context, "Enter OTP");
                                        return;
                                      }
                                      if (state.otp.toString() ==
                                          passwordController.text) {
                                        passwordController.clear();
                                        setState(() {
                                          isOtpVerified = true;
                                        });
                                      } else {
                                        showUrFineSnackbar(
                                            context, "Invalid OTP");
                                      }
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
                if (state.isLoading)
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: kBlackColor.withOpacity(0.3),
                    child: loadingWidget,
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}

class _OTPWidget extends StatelessWidget {
  const _OTPWidget({
    super.key,
    required this.otpSent,
    required this.otpController,
    required this.keyboardType,
  });
  final TextInputType keyboardType;
  final bool otpSent;
  final TextEditingController otpController;
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
        keyboardType: keyboardType,
        controller: otpController,
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
