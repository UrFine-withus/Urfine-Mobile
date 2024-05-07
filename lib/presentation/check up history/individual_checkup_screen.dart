import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/domain/checkup_history/model/checkup_history_model.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class IndividualCheckupScreen extends StatelessWidget {
  const IndividualCheckupScreen({super.key, required this.checkupHistory});
  final Checkup checkupHistory;
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
                    "${checkupHistory.createdAt.day}/${checkupHistory.createdAt.month}/${checkupHistory.createdAt.year}",
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
                checkupHistory.doctorIncharge,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              kHeight20,
              Text(
                checkupHistory.description,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              kHeight20,
              if (checkupHistory.medicine.isNotEmpty)
                Text(
                  "Medicines",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              if (checkupHistory.medicine.isNotEmpty) kHeight10,
              if (checkupHistory.medicine.isNotEmpty)
                ListView.separated(
                  padding: EdgeInsets.all(0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final medicine = checkupHistory.medicine[index];
                    return Row(
                      children: [
                        kWidth10,
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: kLightColor,
                        ),
                        kWidth10,
                        Text(
                          medicine.name,
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
                          medicine.quantity.toString(),
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
                  itemCount: checkupHistory.medicine.length,
                ),
              kHeight20,
              if (checkupHistory.equipments.isNotEmpty)
                Text(
                  "Equipments",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              if (checkupHistory.equipments.isNotEmpty) kHeight10,
              if (checkupHistory.equipments.isNotEmpty)
                ListView.separated(
                  padding: EdgeInsets.all(0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final equipment = checkupHistory.equipments[index];
                    return Row(
                      children: [
                        kWidth10,
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: kLightColor,
                        ),
                        kWidth10,
                        Text(
                          equipment.name,
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
                          equipment.quantity.toString(),
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
