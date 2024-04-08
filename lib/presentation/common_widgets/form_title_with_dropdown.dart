import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class FormTitleWithDropDown extends StatefulWidget {
  const FormTitleWithDropDown({
    super.key,
    required this.dropDownList,
    required this.title,
  });
  final String title;
  final List<DropDownValueModel> dropDownList;

  @override
  State<FormTitleWithDropDown> createState() => _FormTitleWithDropDownState();
}

class _FormTitleWithDropDownState extends State<FormTitleWithDropDown> {
  late SingleValueDropDownController _cnt;
  @override
  void initState() {
    _cnt = SingleValueDropDownController();

    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 15.0.sp,
            color: kBlackColor,
            fontWeight: FontWeight.w300,
          ),
        ),
        kHeight5,
        SizedBox(
          width: double.infinity,
          height: 51.h,
          child: DropDownTextField(
            textStyle: TextStyle(
              color: kBlackColor,
            ),
            textFieldDecoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                  color: kLightColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                  color: kLightColor,
                ),
              ),
            ),
            listTextStyle: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
            dropDownIconProperty: IconProperty(
              color: kLightColor,
              size: 30,
            ),
            controller: _cnt,
            clearOption: true,
            dropdownColor: kExtraLightColor,
            validator: (value) {
              if (value == null) {
                return "Required field";
              } else {
                return null;
              }
            },
            dropDownItemCount: 6,
            dropDownList: widget.dropDownList,
            onChanged: (val) {},
          ),
        ),
      ],
    );
  }
}
