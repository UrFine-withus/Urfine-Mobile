import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/check%20up%20history/individual_checkup_screen.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class CheckupHistoryContainer extends StatelessWidget {
  const CheckupHistoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => IndividualCheckupScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          color: kExtraLightColor,
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        padding: EdgeInsets.all(17.dg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: kDarkColor,
                borderRadius: BorderRadius.circular(28.0.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4.0.sp,
                  horizontal: 11.0.sp,
                ),
                child: Text(
                  "30/12/24",
                  style: TextStyle(
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            kHeight5,
            Text(
              "Dr. Ibrahim",
              style: TextStyle(
                fontSize: 15.0.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            kHeight5,
            Text(
              "hrough meticulous examination and attentive listening, we elucidated nuances in their symptomatology, unveiling potential underlying factors. After integrating findings from the physical examination with insights gleaned from their history, I crafted a provisional diagnostic framework. Together, we deliberated on treatment modalities...",
              style: TextStyle(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 9,
            ),
          ],
        ),
      ),
    );
  }
}
