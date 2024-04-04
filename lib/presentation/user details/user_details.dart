import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_dropdown.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_textfield.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/user%20details/widget/medical_logs_upload_widget.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  List<DropDownValueModel> dropDownList = const [
    DropDownValueModel(name: 'name1', value: "value1"),
    DropDownValueModel(name: 'name2', value: "value2"),
    DropDownValueModel(name: 'name3', value: "value3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 393.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  kHeight20,
                  Text(
                    "User Details",
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w700,
                      color: kLightColor,
                    ),
                  ),
                  kHeight20,
                  FormTitleWithTextField(
                    title: "Full Name",
                  ),
                  kHeight10,
                  Row(
                    children: [
                      Expanded(
                        child: FormTitleWithTextField(
                          title: "Age",
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      kWidth15,
                      Expanded(
                        child: FormTitleWithDropDown(
                          title: "Gender",
                          dropDownList: dropDownList,
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  FormTitleWithTextField(
                    title: "Address",
                    isLarge: true,
                  ),
                  kHeight10,
                  Row(
                    children: [
                      Expanded(
                        child: FormTitleWithTextField(
                          title: "Height",
                          hintText: "(in cm)",
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      kWidth15,
                      Expanded(
                        child: FormTitleWithTextField(
                          title: "Weight",
                          hintText: "(in kg)",
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  Row(
                    children: [
                      Expanded(
                        child: FormTitleWithTextField(
                          title: "Blood Group",
                        ),
                      ),
                      kWidth15,
                      Expanded(
                        child: FormTitleWithDropDown(
                          title: "Emergency Contact",
                          dropDownList: dropDownList,
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  Row(
                    children: [
                      Expanded(
                        child: FormTitleWithDropDown(
                          title: "Suffered Measles?",
                          dropDownList: dropDownList,
                        ),
                      ),
                      kWidth15,
                      Expanded(
                        child: FormTitleWithDropDown(
                          title: "Hepatitis b vaccine?",
                          dropDownList: dropDownList,
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  FormTitleWithTextField(
                    title: "Allergies",
                    isLarge: true,
                    hintText: "(optional)",
                  ),
                  kHeight10,
                  MedicalLogsUploadWidget(),
                  kHeight20,
                  _SubmitButton(),
                  kHeight30
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 207.w,
      height: 34.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [kGradientColor, kLightColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 12.0.r,
            spreadRadius: 0.0.r,
            offset: const Offset(4, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(7.0.r),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.r)),
        child: InkWell(
          splashColor: kLightColor,
          highlightColor: kLightColor,
          borderRadius: BorderRadius.circular(7.r),
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home', (route) => false);
          },
          child: Center(
            child: Text(
              "Submit",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
