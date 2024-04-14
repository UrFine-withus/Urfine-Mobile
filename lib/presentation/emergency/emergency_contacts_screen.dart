import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/emergency/widgets/emergency_contacts_category_tile.dart';

class EmergencyContactsScreen extends StatelessWidget {
  EmergencyContactsScreen({super.key});
  final emergencyCategory = [
    {
      "title": "Hospital\ncontacts",
      "image": "assets/emergency/hospitals.png",
      "color": "0xffCCFFE7",
      "textColor": "0xff258980",
      "route": "/hospital_contacts"
    },
    {
      "title": "Ambulance\ncontacts",
      "image": "assets/emergency/ambulance.png",
      "color": "0xffDBE9FF",
      "textColor": "0xff5396FF",
      "route": "/ambulance_contacts"
    },
    {
      "title": "Blood bank\ncontacts",
      "image": "assets/emergency/blood.png",
      "color": "0xffFFDCDC",
      "textColor": "0xffFE5A5A",
      "route": "/police_contacts"
    },
    {
      "title": "Clinic\ncontacts",
      "image": "assets/emergency/syringe.png",
      "color": "0xffEDDCFF",
      "textColor": "0xff9C4FED",
      "route": "/fire_service_contacts"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _EmergencyContactsAppBar(),
            SizedBox(
              height: 50.h,
            ),
            GridView.builder(
              padding: EdgeInsets.only(
                left: 26.0.w,
                right: 26.0.w,
              ),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 26.w,
                  mainAxisSpacing: 36.h),
              itemCount: 4,
              itemBuilder: (context, index) {
                return EmergencyContactsCategoryTile(
                  emergencyCategory: emergencyCategory,
                  index: index,
                );
              },
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Text(
                "Want to Contact us?",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            kHeight20,
            _ContactUsRow(
              icon: Icons.phone,
              text: "+234 123 456 7890",
            ),
            kHeight10,
            _ContactUsRow(
              icon: Icons.smartphone,
              text: "+91 7306561022",
            ),
            kHeight10,
            _ContactUsRow(
              icon: Icons.pin_drop_sharp,
              text: '''Pandhuvalliyil Kizhakkethil,
Chengannur, Mulakuzha,
Kerala 689505''',
            ),
            kHeight20,
          ],
        ),
      ),
    );
  }
}

class _ContactUsRow extends StatelessWidget {
  const _ContactUsRow({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 26.w,
        ),
        Icon(
          icon,
          size: 30.dg,
          color: kLightColor,
        ),
        kWidth10,
        Text(
          text,
          style: TextStyle(
            fontSize: 13.sp,
            color: kBlackColor,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

class _EmergencyContactsAppBar extends StatelessWidget {
  const _EmergencyContactsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            "Emergency Contacts",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          kHeight5,
          Text(
            "Quickly reach out for vital emergency contacts\n in times of need.",
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
