import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/medical_records/medical_records_bloc.dart';
import 'package:urfine/domain/medical_records/model/medical_reocrds_model.dart';
import 'package:urfine/infrastructure/medical_records/medical_records_repo.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/med%20records%20screen/widgets/med_records_grid.dart';

class MedRecordsScreen extends StatelessWidget {
  const MedRecordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final state = BlocProvider.of<MedicalRecordsBloc>(context).state;
      if (state.medicalRecordModel == null) {
        BlocProvider.of<MedicalRecordsBloc>(context)
            .add(MedicalRecordsEvent.getRecords());
      }
    });
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<MedicalRecordsBloc>(context)
              .add(MedicalRecordsEvent.uploadMedRec(true));
        },
        child: Icon(
          Icons.upload,
          color: kWhiteColor,
        ),
        backgroundColor: kLightColor,
      ),
      body: Column(
        children: [
          _MedRecordsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 44.w),
            child: BlocBuilder<MedicalRecordsBloc, MedicalRecordsState>(
              builder: (context, state) {
                if (state.isUploading) {
                  return LinearProgressIndicator(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    valueColor: AlwaysStoppedAnimation<Color>(kLightColor),
                  );
                }
                return SizedBox();
              },
            ),
          ),
          BlocConsumer<MedicalRecordsBloc, MedicalRecordsState>(
            listener: (context, state) {
              state.failureOrMedicalRecords.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    showUrFineSnackbar(
                      context,
                      failure.map(
                        serverFailure: (_) => "Server Error",
                        clientFailure: (_) => "Client Error",
                        otherFailure: (_) => "Other Error",
                        authFailure: (_) => "Auth Error",
                        noInternet: (value) => "No Internet",
                      ),
                    );
                  },
                  (medicalRecordModel) {},
                ),
              );
            },
            builder: (context, state) {
              if (state.isGettingRecords && state.medicalRecordModel == null) {
                return Expanded(
                  child: Center(
                    child: loadingWidget,
                  ),
                );
              }
              if (state.medicalRecordModel == null ||
                  state.medicalRecordModel!.prescription.isEmpty) {
                return Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Image(
                        width: 230.w,
                        image: AssetImage("assets/health_logs/no_data.png"),
                      ),
                    ),
                    Center(
                      child: Text(
                        "No logs found",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: kBlackColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    kHeight30,
                  ],
                ));
              }
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.dg),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final Prescription prescription =
                          state.medicalRecordModel!.prescription[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            prescription.uploadMonth,
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          kHeight15,
                          MedRecordGrid(
                            imageUrlList: prescription.prescriptionImageUrl,
                          ),
                          kHeight10,
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => kHeight20,
                    itemCount: state.medicalRecordModel!.prescription.length,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class _MedRecordsAppbar extends StatelessWidget {
  const _MedRecordsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 40.h,
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
          bottomLeft: Radius.circular(44.r),
          bottomRight: Radius.circular(44.r),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 25.sp,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                "Medical Records",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
