import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';

class CylinderDecorationWidget extends StatelessWidget {
  const CylinderDecorationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 9.h,
        width: 32.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kGradientColor,
              kLightColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ));
  }
}
