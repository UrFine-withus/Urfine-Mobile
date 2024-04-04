import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';

class LargeGradientButton extends StatelessWidget {
  const LargeGradientButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 58.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [kGradientColor, kLightColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(30.0.r),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
        child: InkWell(
          splashColor: kLightColor,
          highlightColor: kLightColor,
          borderRadius: BorderRadius.circular(100),
          onTap: onPressed,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
