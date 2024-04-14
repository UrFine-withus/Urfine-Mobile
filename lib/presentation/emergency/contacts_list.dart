import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class ContactsListScreen extends StatelessWidget {
  const ContactsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            kHeight30,
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Image(
                  image: AssetImage(
                    'assets/styling/Vector.png',
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: kLightColor,
                        ),
                      ),
                    ),
                    Text(
                      "Hospital contacts",
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w700,
                        color: kLightColor,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ContactListTile(
                      title: "Mammen Memorial Hospital",
                      address: "Bethel junction, Chengannur,Alappuzha",
                      phoneNumber: "0479 245 2356",
                      mobileNumber: "0479 245 2356",
                      location: "Chengannur",
                    );
                  },
                  separatorBuilder: (context, index) {
                    return kHeight20;
                  },
                  itemCount: 10),
            ),
            kHeight30,
          ],
        ),
      ),
    );
  }
}

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    super.key,
    required this.title,
    required this.address,
    required this.phoneNumber,
    required this.mobileNumber,
    required this.location,
  });
  final String title;
  final String address;
  final String phoneNumber;
  final String mobileNumber;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: kExtraLightColor,
            blurRadius: 10.r,
            spreadRadius: 0.r,
            offset: Offset(5, 5),
          ),
        ],
        border: Border.all(
          color: kExtraLightColor,
          width: 3,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 22.w,
          vertical: 11.h,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            height: 1.2,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          address,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.pin_drop_sharp,
              color: kLightColor,
              size: 30.dg,
            ),
            kWidth10,
            Icon(
              Icons.call,
              color: kLightColor,
              size: 30.dg,
            ),
            kWidth10,
            Icon(
              Icons.smartphone,
              color: kLightColor,
              size: 30.dg,
            ),
          ],
        ),
      ),
    );
  }
}
