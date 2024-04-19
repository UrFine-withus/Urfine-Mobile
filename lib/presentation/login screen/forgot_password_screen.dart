import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfine/application/authentication/authentication_bloc.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_textfield.dart';
import 'package:urfine/presentation/common_widgets/large_gradient_button.dart';
import 'package:urfine/presentation/common_widgets/title_with_text_filed.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.resetPasswordFailureOrSuccessOption.fold(
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
              Navigator.pop(context);
              showUrFineSnackbar(context, "Password reset link sent to email");
            },
          ),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/login/login.png'),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  TitleWithTextField(
                      type: TextFieldType.email, controller: controller),
                  kHeight30,
                  LargeGradientButton(
                      buttonText: "Reset Password",
                      onPressed: () {
                        if (controller.text.isEmpty) {
                          showUrFineSnackbar(context, "Email is required");
                          return;
                        }
                        FocusScope.of(context).unfocus();
                        BlocProvider.of<AuthenticationBloc>(context).add(
                            AuthenticationEvent.resetPassword(
                                controller.text.trim()));
                      }),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
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
    ));
  }
}
