import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/add_user_data/add_user_data_bloc.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/failure/failure.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';
import 'package:urfine/domain/user_details/model/add_user_model.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _chickenpoxController = TextEditingController();
  final TextEditingController _measlesController = TextEditingController();
  final TextEditingController _hepatitisController = TextEditingController();

  List<DropDownValueModel> genderList = const [
    DropDownValueModel(name: 'Male', value: "Male"),
    DropDownValueModel(name: 'Female', value: "Femlae"),
    DropDownValueModel(name: "Prefere not to say", value: "pns"),
  ];
  List<DropDownValueModel> chickenpox = const [
    DropDownValueModel(name: 'Yes', value: "true"),
    DropDownValueModel(name: 'No', value: "false"),
  ];
  List<DropDownValueModel> measles = const [
    DropDownValueModel(name: 'Yes', value: "true"),
    DropDownValueModel(name: 'No', value: "false"),
  ];
  List<DropDownValueModel> hepatitis = const [
    DropDownValueModel(name: 'Yes', value: "true"),
    DropDownValueModel(name: 'No', value: "false"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AddUserDataBloc, AddUserDataState>(
          listener: (context, state) {
            state.addUserDataOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  if (failure == MainFailure.serverFailure()) {
                    showUrFineSnackbar(context,
                        " We are facing some issues. Please try again later.");
                  } else {
                    showUrFineSnackbar(context, "Something went wrong");
                  }
                },
                (success) {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                SingleChildScrollView(
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
                            controller: _nameController,
                          ),
                          kHeight10,
                          Row(
                            children: [
                              Expanded(
                                child: FormTitleWithTextField(
                                  title: "Age",
                                  keyboardType: TextInputType.number,
                                  controller: _ageController,
                                ),
                              ),
                              kWidth15,
                              Expanded(
                                child: FormTitleWithDropDown(
                                  title: "Gender",
                                  dropDownList: genderList,
                                  controller: _genderController,
                                ),
                              ),
                            ],
                          ),
                          kHeight10,
                          FormTitleWithTextField(
                            title: "Address",
                            isLarge: true,
                            controller: _addressController,
                          ),
                          kHeight10,
                          Row(
                            children: [
                              Expanded(
                                child: FormTitleWithTextField(
                                  title: "Height",
                                  hintText: "(in cm)",
                                  keyboardType: TextInputType.number,
                                  controller: _heightController,
                                ),
                              ),
                              kWidth15,
                              Expanded(
                                child: FormTitleWithTextField(
                                  title: "Weight",
                                  hintText: "(in kg)",
                                  keyboardType: TextInputType.number,
                                  controller: _weightController,
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
                                  controller: _bloodGroupController,
                                ),
                              ),
                              kWidth15,
                              Expanded(
                                child: FormTitleWithDropDown(
                                  title: "Suffered chickenpox?",
                                  dropDownList: chickenpox,
                                  controller: _chickenpoxController,
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
                                  dropDownList: measles,
                                  controller: _measlesController,
                                ),
                              ),
                              kWidth15,
                              Expanded(
                                child: FormTitleWithDropDown(
                                  title: "Hepatitis b vaccine?",
                                  controller: _hepatitisController,
                                  dropDownList: hepatitis,
                                ),
                              ),
                            ],
                          ),
                          kHeight10,
                          FormTitleWithTextField(
                            title: "Allergies",
                            isLarge: true,
                            hintText: "(optional)",
                            controller: _allergiesController,
                          ),
                          kHeight10,
                          MedicalLogsUploadWidget(),
                          kHeight20,
                          _SubmitButton(
                            onPressed: () {
                              if (_nameController.text.isEmpty) {
                                showUrFineSnackbar(context, "Name is required");
                                return;
                              }
                              if (_ageController.text.isEmpty) {
                                showUrFineSnackbar(context, "Age is required");
                                return;
                              }
                              if (_genderController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Please select Gender");
                                return;
                              }
                              if (_addressController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Address is required");
                                return;
                              }
                              if (_heightController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Height is required");
                                return;
                              }
                              if (_weightController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Weight is required");
                                return;
                              }
                              if (_bloodGroupController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Blood Group is required");
                                return;
                              }
                              if (_chickenpoxController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Chickenpox is required");
                                return;
                              }
                              if (_measlesController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Measles is required");
                                return;
                              }
                              if (_hepatitisController.text.isEmpty) {
                                showUrFineSnackbar(
                                    context, "Hepatitis is required");
                                return;
                              }

                              final SufferedDiseases sufferedDiseases =
                                  SufferedDiseases(
                                chickenPox:
                                    _chickenpoxController.text == "true",
                                measles: _measlesController.text == "true",
                                hepatitis: _hepatitisController.text == "true",
                                allergies: _allergiesController.text,
                              );
                              final AddUserModel addUserModel = AddUserModel(
                                userID: getIt.get<UserDataModel>().uid,
                                name: _nameController.text,
                                age: _ageController.text,
                                gender: _genderController.text,
                                address: _addressController.text,
                                height: int.parse(_heightController.text),
                                weight: int.parse(_weightController.text),
                                bloodGroup: _bloodGroupController.text,
                                sufferedDiseases: sufferedDiseases,
                              );
                              BlocProvider.of<AddUserDataBloc>(context)
                                  .add(AddUserDataEvent(addUserModel));
                            },
                          ),
                          kHeight30
                        ],
                      ),
                    ),
                  ),
                ),
                if (state.isSubmitting)
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: kBlackColor.withOpacity(0.3),
                    child: loadingWidget,
                  )
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.onPressed,
  });
  final VoidCallback onPressed;
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
          onTap: onPressed,
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
