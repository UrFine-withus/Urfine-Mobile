import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

enum TextFieldType { email, password }

class TitleWithTextField extends StatelessWidget {
  TitleWithTextField(
      {super.key,
      required this.type,
      required this.controller,
      this.obscureText});
  final TextEditingController controller;
  final TextFieldType type;
  final ValueNotifier<bool>? obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type == TextFieldType.email ? 'Email' : 'Password',
          style: TextStyle(
            fontSize: 17.0.sp,
            color: kLightColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        kHeight10,
        SizedBox(
          width: 305.w,
          height: 53.h,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kExtraLightColor,
                  blurRadius: 16.0.r,
                  spreadRadius: 0.0.r,
                  offset: const Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(10.0.r),
            ),
            child: ValueListenableBuilder(
                valueListenable: obscureText ?? ValueNotifier(false),
                builder: (context, value, child) {
                  return TextFormField(
                    obscureText: type == TextFieldType.password ? value : false,
                    controller: controller,
                    decoration: InputDecoration(
                      suffixIcon: type == TextFieldType.password
                          ? GestureDetector(
                              child: Icon(
                                value ? Icons.visibility_off : Icons.visibility,
                                color: kLightColor,
                              ),
                              onTap: () {
                                obscureText!.value = !obscureText!.value;
                                obscureText!.notifyListeners();
                              },
                            )
                          : null,
                      hintText: 'Enter ${type.name}',
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
                  );
                }),
          ),
        ),
      ],
    );
  }
}
