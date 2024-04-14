import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/healthlogs%20screen/widgets/date_container.dart';

class HealthLogsAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: RadialGradient(
          center: Alignment(-1.0, -1.0),
          radius: 1.0,
          colors: [
            Colors.white,
            Color(0xffFFE6DF),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(44.r),
          bottomRight: Radius.circular(44.r),
        ),
      ),
      child: Column(
        children: [
          kHeight10,
          Row(
            children: [
              kWidth15,
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 25.sp,
                ),
              ),
              kWidth5,
              Text(
                "Health Logs",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Container(
                height: 50.dg,
                width: 50.dg,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: LinearGradient(
                      colors: [
                        kGradientColor,
                        kDarkColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(2, 4),
                      ),
                    ]),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.all(0),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ),
              ),
              kWidth20,
            ],
          ),
          kHeight10,
          SizedBox(
            height: 134.dg,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return kWidth20;
                  }
                  return DateContainer(
                    date: "0$index",
                  );
                },
                separatorBuilder: (context, index) => kWidth15,
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
