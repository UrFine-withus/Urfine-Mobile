import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/emergency/contacts_list.dart';

class EmergencyContactsCategoryTile extends StatelessWidget {
  EmergencyContactsCategoryTile({
    Key? key,
    required this.emergencyCategory,
    required this.index,
  });

  int index;
  final List<Map<String, dynamic>> emergencyCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ContactsListScreen(
              type: emergencyCategory[index]["type"]!,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(int.parse(emergencyCategory[index]["color"]!)),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              emergencyCategory[index]["image"]!,
              height: 56.dg,
              width: 56.dg,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              emergencyCategory[index]["title"]!,
              style: TextStyle(
                fontSize: 15.sp,
                color: Color(int.parse(emergencyCategory[index]["textColor"]!)),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
