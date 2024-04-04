import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_dropdown.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_textfield.dart';
import 'package:urfine/presentation/common_widgets/title_with_text_filed.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
