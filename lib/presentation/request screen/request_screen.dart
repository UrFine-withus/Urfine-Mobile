import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/request_checkup/request_checkup_bloc.dart';
import 'package:urfine/domain/request_checkup/model/request_model.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_dropdown.dart';
import 'package:urfine/presentation/common_widgets/form_title_with_textfield.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({super.key});
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _equipmentsController = TextEditingController();
  final TextEditingController _sp02Controller = TextEditingController();
  final TextEditingController _bpController = TextEditingController();
  final TextEditingController _doctorNeededController = TextEditingController();
  final TextEditingController _nurseAssistanceController =
      TextEditingController();
  List<DropDownValueModel> doctorNeeded = const [
    DropDownValueModel(name: 'Yes', value: "Yes"),
    DropDownValueModel(name: 'No', value: "no"),
  ];
  List<DropDownValueModel> nurseAssistance = const [
    DropDownValueModel(name: 'Yes', value: "Yes"),
    DropDownValueModel(name: 'No', value: "no"),
  ];
  List<DropDownValueModel> address = const [
    DropDownValueModel(name: 'Home', value: "home"),
    DropDownValueModel(name: 'Hospital', value: "hospital"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<RequestCheckupBloc, RequestCheckupState>(
          listener: (context, state) {
            state.requestFailureOrSuccessOption.fold(
              () {},
              (a) => a.fold(
                (l) {
                  showUrFineSnackbar(
                    context,
                    l.map(
                      clientFailure: (_) => 'Something went wrong',
                      serverFailure: (_) => 'Server under maintanance',
                      authFailure: (value) => value.message,
                      noInternet: (_) => 'Cehck your internet connection',
                      otherFailure: (_) => 'Somthing went wrong',
                    ),
                  );
                },
                (r) {
                  showUrFineSnackbar(context, 'Request submitted successfully');
                  Navigator.pop(context);
                },
              ),
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                Padding(
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
                      kHeight30,
                      FormTitleWithTextField(
                        title: "Details",
                        isLarge: true,
                        controller: _detailsController,
                      ),
                      kHeight20,
                      Row(
                        children: [
                          Expanded(
                            child: FormTitleWithDropDown(
                              dropDownList: doctorNeeded,
                              title: "Doctor needed?",
                              controller: _doctorNeededController,
                            ),
                          ),
                          kWidth15,
                          Expanded(
                            child: FormTitleWithDropDown(
                              title: "Nurse Assistance",
                              dropDownList: nurseAssistance,
                              controller: _nurseAssistanceController,
                            ),
                          ),
                        ],
                      ),
                      kHeight20,
                      FormTitleWithTextField(
                        title: "Any Equipments needed?",
                        hintText: "Specify them",
                        controller: _equipmentsController,
                      ),
                      kHeight20,
                      Row(
                        children: [
                          Expanded(
                            child: FormTitleWithTextField(
                              title: "Sp02 level",
                              hintText: "(optional)",
                              controller: _sp02Controller,
                            ),
                          ),
                          kWidth15,
                          Expanded(
                            child: FormTitleWithTextField(
                              title: "Blood Pressure",
                              hintText: "(optional)",
                              controller: _bpController,
                            ),
                          ),
                        ],
                      ),
                      kHeight30,
                      kHeight10,
                      ElevatedButton(
                        onPressed: () {
                          if (_doctorNeededController.text.isEmpty) {
                            showUrFineSnackbar(
                                context, "Doctor needed cannot be empty");
                            return;
                          }
                          if (_nurseAssistanceController.text.isEmpty) {
                            showUrFineSnackbar(
                                context, "Nurse assistance cannot be empty");
                            return;
                          }
                          final RequireNeedsModel requireNeeds =
                              RequireNeedsModel(
                            doctorNeeded: _doctorNeededController.text == "Yes",
                            nurseAssistance:
                                _nurseAssistanceController.text == "Yes",
                            equipmentsNeeded: _equipmentsController.text,
                          );
                          final RequestModel requestModel = RequestModel(
                            details: _detailsController.text,
                            spO2Level: int.tryParse(_sp02Controller.text),
                            bloodPressure: int.tryParse(_bpController.text),
                            requireNeeds: requireNeeds,
                          );
                          BlocProvider.of<RequestCheckupBloc>(context).add(
                            RequestCheckupEvent(requestModel),
                          );
                        },
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
                if (state.isLoading)
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
