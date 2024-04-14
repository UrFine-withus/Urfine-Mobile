import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/med%20records%20screen/widgets/med_records_grid.dart';

class MedRecordsScreen extends StatelessWidget {
  const MedRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _MedRecordsAppbar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.dg),
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 March 2024",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      kHeight15,
                      MedRecordGrid(),
                      kHeight10,
                    ],
                  );
                },
                separatorBuilder: (context, index) => kHeight20,
                itemCount: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MedRecordsAppbar extends StatelessWidget {
  const _MedRecordsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 40.h,
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
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 25.sp,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                "Medical Records",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
