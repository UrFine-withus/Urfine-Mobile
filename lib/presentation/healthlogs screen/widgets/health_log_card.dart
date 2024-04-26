import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/domain/health_logs/models/health_logs_model.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class HelathLogCard extends StatelessWidget {
  HelathLogCard({
    super.key,
    required this.healthLog,
  });
  final colorMap = {
    "High": const Color(0xffFF6072),
    "Normal": const Color(0xFFF7D631),
    "Low": const Color(0xff8AEDBE),
  };
  final HealthLog healthLog;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: kExtraLightColor,
            blurRadius: 19.r,
            spreadRadius: 0.r,
            offset: Offset(2, 5),
          ),
        ],
        border: Border.all(
          color: kExtraLightColor,
          width: 3.dg,
        ),
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 32.r,
                backgroundColor: colorMap[healthLog.level],
              ),
              CircleAvatar(
                radius: 25.r,
                backgroundColor: kWhiteColor,
              ),
              Text(
                healthLog.level,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w800,
                  color: colorMap[healthLog.level],
                ),
              )
            ],
          ),
          kWidth30,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  healthLog.label,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: kBlackColor,
                  ),
                ),
                kHeight5,
                Row(
                  children: [
                    Text(
                      "Current \n${healthLog.currentValue}",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor,
                      ),
                    ),
                    kWidth20,
                    Text(
                      "Normal \n${healthLog.normalValue}",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor,
                      ),
                    ),
                    kWidth15,
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
