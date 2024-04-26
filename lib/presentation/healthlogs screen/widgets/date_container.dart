import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/health_logs/health_logs_bloc.dart';
import 'package:urfine/presentation/core/colors.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    super.key,
    required this.date,
    required this.stringDate,
  });
  final DateTime date;
  final String stringDate;
  String getMonth(int month) {
    switch (month) {
      case 1:
        return "Jan";
      case 2:
        return "Feb";
      case 3:
        return "Mar";
      case 4:
        return "Apr";
      case 5:
        return "May";
      case 6:
        return "Jun";
      case 7:
        return "Jul";
      case 8:
        return "Aug";
      case 9:
        return "Sep";
      case 10:
        return "Oct";
      case 11:
        return "Nov";
      case 12:
        return "Dec";
      default:
        return "Jan";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<HealthLogsBloc>(context)
            .add(HealthLogsEvent.fatchLogs(stringDate));
      },
      child: Container(
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
              date.day.toString(),
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: kBlackColor,
                height: 1,
              ),
            ),
            Text(
              getMonth(date.month),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: kBlackColor,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
