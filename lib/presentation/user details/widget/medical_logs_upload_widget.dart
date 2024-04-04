import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class MedicalLogsUploadWidget extends StatefulWidget {
  MedicalLogsUploadWidget({super.key});

  @override
  State<MedicalLogsUploadWidget> createState() =>
      _MedicalLogsUploadWidgetState();
}

class _MedicalLogsUploadWidgetState extends State<MedicalLogsUploadWidget> {
  final ImagePicker imagePicker = ImagePicker();

  List<XFile> imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList.addAll(selectedImages);
    }
    setState(() {});
  }

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
        GestureDetector(
          onTap: () {
            selectImages();
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
              child: imageFileList.isEmpty
                  ? Center(
                      child: Image.asset(
                        "assets/user details/logs.png",
                      ),
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        for (var i = 0; i < imageFileList.length; i++)
                          Padding(
                            padding: EdgeInsets.only(right: 5.w),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Image.file(
                                  File(imageFileList[i].path),
                                  width: 100.w,
                                  height: 100.h,
                                ),
                                SizedBox(
                                  width: 23.sp,
                                  height: 23.sp,
                                  child: IconButton.filled(
                                    padding: EdgeInsets.all(0),
                                    onPressed: () {
                                      imageFileList.removeAt(i);
                                      setState(() {});
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
        ),
      ],
    );
  }
}
