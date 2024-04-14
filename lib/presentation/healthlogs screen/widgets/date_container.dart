import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
    required this.date,
  });
  final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84.dg,
      height: 84.dg,
      margin: EdgeInsets.symmetric(
        vertical: 25.h,
      ),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(255, 198, 185, 0.58),
              blurRadius: 19.r,
              spreadRadius: 0.r,
              offset: Offset(2, 5),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            date,
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: kBlackColor,
              height: 1,
            ),
          ),
          Text(
            "Jan",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w300,
              color: kBlackColor,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
