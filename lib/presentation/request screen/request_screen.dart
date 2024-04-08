import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_dropdown.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_textfield.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            children: [
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
                        "Request for check up",
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
              kHeight20,
              FormTitleWithTextField(
                title: "Details",
                isLarge: true,
              ),
              kHeight20,
              Row(
                children: [
                  Expanded(
                    child: FormTitleWithDropDown(
                      dropDownList: [],
                      title: "Doctor needed?",
                    ),
                  ),
                  kWidth15,
                  Expanded(
                    child: FormTitleWithDropDown(
                      title: "Nurse Assistance",
                      dropDownList: [],
                    ),
                  ),
                ],
              ),
              kHeight20,
              FormTitleWithTextField(
                title: "Any Equipments needed?",
                hintText: "Specify them",
              ),
              kHeight20,
              FormTitleWithDropDown(
                title: "Address",
                dropDownList: [],
              ),
              kHeight20,
              Row(
                children: [
                  Expanded(
                    child: FormTitleWithTextField(
                      title: "Sp02 level",
                      hintText: "(optional)",
                    ),
                  ),
                  kWidth15,
                  Expanded(
                    child: FormTitleWithTextField(
                      title: "Blood Pressure",
                      hintText: "(optional)",
                    ),
                  ),
                ],
              ),
              kHeight30,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kLightColor,
                  padding: EdgeInsets.symmetric(
                    vertical: 9.h,
                    horizontal: 54.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text("Submit",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: kWhiteColor,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
