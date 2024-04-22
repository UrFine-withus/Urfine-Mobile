import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/check%20up%20history/widgets/checkup_history_container.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class CheckUpHistoryScreen extends StatelessWidget {
  const CheckUpHistoryScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20.0.sp,
              right: 20.0.sp,
            ),
            height: 172.h,
            width: 393.w,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(44.r),
                bottomRight: Radius.circular(44.r),
              ),
              gradient: RadialGradient(
                center: Alignment(-1.0, -1.0),
                radius: 1.0,
                colors: [
                  Colors.white,
                  Color(0xffFFE6DF),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                kHeight30,
                kHeight5,
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                Text(
                  "Check up History",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                kHeight5,
                Text(
                  '''Access your detailed check-up history for
 personalized care planning.''',
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          kHeight20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CheckupHistoryContainer(),
                    ],
                  ),
                ),
                kWidth15,
                Expanded(
                  child: Column(
                    children: [
                      CheckupHistoryContainer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
