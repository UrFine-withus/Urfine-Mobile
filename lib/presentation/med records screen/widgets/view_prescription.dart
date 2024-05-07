import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:photo_view/photo_view.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class ViewPrescriptionScreen extends StatelessWidget {
  ViewPrescriptionScreen({super.key, required this.imageUrl});
  final String imageUrl;
  Dio dio = Dio();
  bool isSuccess = false;
  void _startDownloading(
      BuildContext context, final Function okCallback) async {
    final time = DateTime.now().millisecondsSinceEpoch;
    String fileName = "$time.jpeg";

    String path = await _getFilePath(fileName);

    try {
      await dio.download(
        imageUrl,
        path,
        onReceiveProgress: (recivedBytes, totalBytes) {
          okCallback(recivedBytes, totalBytes);
        },
        deleteOnError: true,
      ).then((_) {
        isSuccess = true;
        showUrFineSnackbar(context, "Downloaded Successfully");
        log("success");
      });
    } catch (e) {
      print("Exception$e");
    }
  }

  Future<String> _getFilePath(String filename) async {
    Directory? dir;

    try {
      if (Platform.isIOS) {
        dir = await getApplicationDocumentsDirectory();
      } else {
        dir = Directory('/storage/emulated/0/Download/');
        if (!await dir.exists()) dir = (await getExternalStorageDirectory())!;
      }
    } catch (err) {
      print("Cannot get download folder path $err");
    }
    return "${dir?.path}$filename";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 30.h,
              bottom: 10.h,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: RadialGradient(
                center: Alignment(-1.0, -1.0),
                radius: 1.0,
                colors: [
                  Colors.white,
                  Color(0xffFFE6DF),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    _startDownloading(context, (recivedBytes, totalBytes) {});
                  },
                  icon: Icon(
                    Icons.cloud_download_outlined,
                    color: Colors.black,
                    size: 25.sp,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PhotoView(
              backgroundDecoration: BoxDecoration(
                color: Colors.white,
              ),
              loadingBuilder: (context, event) => Center(
                child: SpinKitPulse(
                  color: kExtraLightColor,
                  size: 90.dg,
                ),
              ),
              imageProvider: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
