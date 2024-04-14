import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class DietSuggestionWidget extends StatelessWidget {
  const DietSuggestionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        kWidth10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Are you seeking for \nsome diet plan suggestions?",
              style: TextStyle(
                fontSize: 15.5.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            kHeight10,
            Text(
              "Explore customized diet plans \nto suit your needs and lifestyle.",
              style: TextStyle(
                fontSize: 11.0.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
            kHeight25,
            SizedBox(
              height: 35.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kLightColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                  elevation: 5,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  splashFactory: NoSplash.splashFactory,
                  shadowColor: kBlackColor.withOpacity(0.7),
                  overlayColor: kDarkColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/dietSugggstion");
                },
                child: Text(
                  "Get Suggestions",
                  style: TextStyle(
                    fontSize: 14.0.sp,
                    color: kWhiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
        Spacer(),
        Image(
          height: 122.w,
          image: AssetImage("assets/home page/diet.png"),
        ),
        kWidth15,
      ],
    );
  }
}
