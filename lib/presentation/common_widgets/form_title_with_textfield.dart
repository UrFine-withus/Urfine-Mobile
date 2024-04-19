import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class FormTitleWithTextField extends StatelessWidget {
  const FormTitleWithTextField({
    super.key,
    required this.title,
    this.keyboardType = TextInputType.text,
    this.hintText = '',
    this.isLarge = false,
    required this.controller,
  });
  final bool isLarge;
  final String title;
  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15.0.sp,
            color: kBlackColor,
            fontWeight: FontWeight.w300,
          ),
        ),
        kHeight5,
        SizedBox(
          width: double.infinity,
          height: isLarge ? 96.h : 51.h,
          child: TextField(
            controller: controller,
            maxLines: null,
            expands: true,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 15.0.sp,
                color: const Color(0xff888888),
                fontWeight: FontWeight.w400,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
              filled: true,
              fillColor: kWhiteColor,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(color: kLightColor),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(color: kLightColor),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(
                  color: kLightColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
