import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/authentication/authentication_bloc.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/presentation/common_widgets/cylinder_decoration_widget.dart';
import 'package:urfine/presentation/common_widgets/large_gradient_button.dart';

import 'package:urfine/presentation/common_widgets/title_with_text_filed.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> passwordObscure = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.loginFailuteOrSuccessOption.fold(
              () {},
              (a) => a.fold(
                (l) {
                  if (l is AuthFailure) {
                    showUrFineSnackbar(context, l.message);
                  } else {
                    showUrFineSnackbar(context, 'Something went wrong');
                  }
                },
                (r) {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                SingleChildScrollView(
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
                            TitleWithTextField(
                              type: TextFieldType.email,
                              controller: emailController,
                            ),
                            kHeight15,
                            TitleWithTextField(
                              type: TextFieldType.password,
                              controller: passwordController,
                              obscureText: passwordObscure,
                            ),
                            kHeight10,
                            SizedBox(
                              width: 305.w,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/forgotPassword');
                                  },
                                  child: Text("Forgot Password?",
                                      style: TextStyle(
                                        color: kLightColor,
                                        fontSize: 15.0.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
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
                                  if (emailController.text.isEmpty) {
                                    showUrFineSnackbar(
                                        context, "Email is required");
                                    return;
                                  }
                                  if (passwordController.text.isEmpty) {
                                    showUrFineSnackbar(
                                        context, "Password is required");
                                    return;
                                  }
                                  BlocProvider.of<AuthenticationBloc>(context)
                                      .add(
                                    AuthenticationEvent.loginWithFirebase(
                                      emailController.text,
                                      passwordController.text,
                                    ),
                                  );
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
                if (state.isLoading)
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: kBlackColor.withOpacity(0.3),
                    child: loadingWidget,
                  )
              ],
            );
          },
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
