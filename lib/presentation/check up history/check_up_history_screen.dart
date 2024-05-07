import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/checkup_history/checkup_history_bloc.dart';
import 'package:urfine/presentation/check%20up%20history/widgets/checkup_history_container.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class CheckUpHistoryScreen extends StatelessWidget {
  const CheckUpHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final state = BlocProvider.of<CheckupHistoryBloc>(context).state;
      if (state.checkupHistory == null) {
        BlocProvider.of<CheckupHistoryBloc>(context).add(CheckupHistoryEvent());
      }
    });
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20.0.sp,
              right: 20.0.sp,
            ),
            height: 172.h,
            width: 393.w,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(44.r),
                bottomRight: Radius.circular(44.r),
              ),
              gradient: RadialGradient(
                center: Alignment(-1.0, -1.0),
                radius: 1.0,
                colors: [
                  Colors.white,
                  Color(0xffFFE6DF),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                kHeight30,
                kHeight5,
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                Text(
                  "Check up History",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                kHeight5,
                Text(
                  '''Access your detailed check-up history for
 personalized care planning.''',
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          kHeight20,
          BlocConsumer<CheckupHistoryBloc, CheckupHistoryState>(
            listener: (context, state) {
              state.checkupHistoryFailureorSuccess.fold(
                () {},
                (a) {
                  a.fold((l) {
                    showUrFineSnackbar(
                      context,
                      l.when(
                        serverFailure: () => "Server under maintenance",
                        noInternet: () => "No Internet",
                        otherFailure: () => "Something went wrong",
                        clientFailure: () => "check your internet connection",
                        authFailure: (message) {
                          return message;
                        },
                      ),
                    );
                  }, (r) {});
                },
              );
            },
            builder: (context, state) {
              if (state.isLoading ||
                  state.checkupHistoryFailureorSuccess.isNone()) {
                return Expanded(
                  child: Center(
                    child: loadingWidget,
                  ),
                );
              }
              if (state.checkupHistory == null ||
                  state.checkupHistory!.checkups.isEmpty) {
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
                          "No Checkup History Found",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: kBlackColor.withOpacity(0.7),
                          ),
                        ),
                      ),
                      kHeight30,
                    ],
                  ),
                );
              }
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            if (index.isEven) {
                              return CheckupHistoryContainer(
                                checkupHistory:
                                    state.checkupHistory!.checkups[index],
                              );
                            }
                            return SizedBox();
                          },
                          separatorBuilder: (context, index) => kHeight10,
                          itemCount: state.checkupHistory!.checkups.length,
                        ),
                      ),
                      kWidth15,
                      Expanded(
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            if (index.isEven) {
                              return CheckupHistoryContainer(
                                checkupHistory:
                                    state.checkupHistory!.checkups[index + 1],
                              );
                            }
                            return const SizedBox();
                          },
                          separatorBuilder: (context, index) => kHeight10,
                          itemCount: state.checkupHistory!.checkups.length - 1,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
