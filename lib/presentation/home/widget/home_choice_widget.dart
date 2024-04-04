import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';

class HomeChoiceWidget extends StatelessWidget {
  const HomeChoiceWidget({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.route,
  });
  final String name;
  final String imageUrl;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(28.0.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 23.0.sp),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 13.0.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 65.dg,
              width: 65.dg,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(100.0.r),
                  boxShadow: [
                    BoxShadow(
                      color: kBlackColor.withOpacity(0.06),
                      blurRadius: 12.0.r,
                      spreadRadius: 0.0.r,
                      offset: const Offset(0, 5),
                    ),
                  ]),
              padding: EdgeInsets.all(14.dg),
              child: Image.asset(
                imageUrl,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
