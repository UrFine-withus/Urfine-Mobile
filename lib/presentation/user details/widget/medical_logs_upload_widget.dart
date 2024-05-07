import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:urfine/application/medical_records/medical_records_bloc.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class MedicalLogsUploadWidget extends StatefulWidget {
  MedicalLogsUploadWidget({super.key});

  @override
  State<MedicalLogsUploadWidget> createState() =>
      _MedicalLogsUploadWidgetState();
}

class _MedicalLogsUploadWidgetState extends State<MedicalLogsUploadWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Upload Medical Logs",
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w300,
            color: kBlackColor,
          ),
        ),
        kHeight10,
        BlocConsumer<MedicalRecordsBloc, MedicalRecordsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                BlocProvider.of<MedicalRecordsBloc>(context)
                    .add(MedicalRecordsEvent.selectMedRec());
              },
              child: SizedBox(
                width: 393.w,
                height: 122.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: kLightColor,
                    ),
                  ),
                  child: state.selectedMedicalRecords.isEmpty
                      ? Center(
                          child: Image.asset(
                            "assets/user details/logs.png",
                          ),
                        )
                      : SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            for (var i = 0;
                                i < state.selectedMedicalRecords.length;
                                i++)
                              Padding(
                                padding: EdgeInsets.only(right: 5.w),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Image.file(
                                      File(
                                          state.selectedMedicalRecords[i].path),
                                      width: 100.w,
                                      height: 100.h,
                                    ),
                                    SizedBox(
                                      width: 23.sp,
                                      height: 23.sp,
                                      child: IconButton.filled(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {
                                          BlocProvider.of<MedicalRecordsBloc>(
                                                  context)
                                              .add(MedicalRecordsEvent.removeAt(
                                                  i));
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            kLightColor,
                                          ),
                                        ),
                                        icon: Icon(Icons.close),
                                        iconSize: 20.r,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          ]),
                        ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
