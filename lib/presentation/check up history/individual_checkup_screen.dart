import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class IndividualCheckupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: kDarkColor,
                  size: 27.dg,
                ),
              ),
              kHeight20,
              DecoratedBox(
                decoration: BoxDecoration(
                  color: kDarkColor,
                  borderRadius: BorderRadius.circular(28.0.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.0.sp,
                    horizontal: 13.0.sp,
                  ),
                  child: Text(
                    "30/12/24",
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      fontWeight: FontWeight.w800,
                      color: kWhiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              kHeight20,
              Text(
                "Dr. Ibrahim",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kHeight20,
              Text(
                '''Through meticulous examination and attentive listening, we elucidated nuances in their symptomatology, unveiling potential underlying factors. After integrating findings from the physical examination with insights gleaned from their history, I crafted a provisional diagnostic framework. Together, we deliberated on treatment modalitiesI conducted a thorough assessment of their presenting complaint of [chief complaint]. After reviewing their medical history, performing a focused physical examination, and discussing their symptoms in detail''',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              kHeight20,
              Text(
                "Medicines",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kHeight10,
              ListView.separated(
                padding: EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      kWidth10,
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: kLightColor,
                      ),
                      kWidth10,
                      Text(
                        "Paracetamol",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      kWidth10,
                      Icon(
                        Icons.remove,
                        color: kLightColor,
                      ),
                      kWidth10,
                      Text(
                        "10",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 8.h,
                  );
                },
                itemCount: 3,
              ),
              kHeight20,
              Text(
                "Equipments",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kHeight10,
              ListView.separated(
                padding: EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      kWidth10,
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: kLightColor,
                      ),
                      kWidth10,
                      Text(
                        "Wheelchair",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      kWidth10,
                      Icon(
                        Icons.remove,
                        color: kLightColor,
                      ),
                      kWidth10,
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 8.h,
                  );
                },
                itemCount: 3,
              ),
              kHeight30,
            ],
          ),
        ),
      ),
    );
  }
}
