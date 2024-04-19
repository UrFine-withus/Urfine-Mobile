import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:urfine/presentation/core/colors.dart';

final kHeight5 = SizedBox(
  height: 5.h,
);
final kHeight10 = SizedBox(
  height: 10.h,
);
final kHeight15 = SizedBox(
  height: 15.h,
);
final kHeight20 = SizedBox(
  height: 20.h,
);
final kHeight25 = SizedBox(
  height: 25.h,
);
final kHeight30 = SizedBox(
  height: 30.h,
);
final kWidth5 = SizedBox(
  width: 5.w,
);
final kWidth10 = SizedBox(
  width: 10.w,
);
final kWidth15 = SizedBox(
  width: 15.w,
);
final kWidth20 = SizedBox(
  width: 20.w,
);
final kWidth25 = SizedBox(
  width: 25.w,
);
final kWidth30 = SizedBox(
  width: 30.w,
);
final loadingWidget = Center(
  child: SpinKitPulse(
    color: kExtraLightColor,
    size: 90.dg,
  ),
);

showUrFineSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: kExtraLightColor,
      content: Text(
        message,
        style: TextStyle(
          color: kBlackColor,
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      duration: const Duration(seconds: 2),
    ),
  );
}
