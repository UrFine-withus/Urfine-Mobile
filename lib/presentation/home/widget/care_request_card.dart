import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class CareRequestCard extends StatelessWidget {
  const CareRequestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kExtraLightColor,
          borderRadius: BorderRadius.all(Radius.circular(11.0.r)),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 17.w,
            bottom: 5.h,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image(
                  height: 173.h,
                  image: AssetImage(
                    "assets/home page/request.png",
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight15,
                  Text(
                    "Request Palliative care \nCheck-up",
                    style: TextStyle(
                      fontSize: 15.5.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kHeight10,
                  Text(
                    "Submit your request for \na check-up with our palliative\ncare team now",
                    style: TextStyle(
                      fontSize: 11.0.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-10.w, 0),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                        ),
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        overlayColor: kDarkColor.withOpacity(0.8),
                      ),
                      iconAlignment: IconAlignment.end,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15.sp,
                        color: kDarkColor,
                      ),
                      label: Text(
                        "Request Now",
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          color: kDarkColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
