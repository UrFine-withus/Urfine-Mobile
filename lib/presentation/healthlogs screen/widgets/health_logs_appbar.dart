import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:urfine/application/health_logs/health_logs_bloc.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/healthlogs%20screen/widgets/date_container.dart';

class HealthLogsAppbar extends StatelessWidget {
  final ValueNotifier<bool> opacityNotifier = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final state = BlocProvider.of<HealthLogsBloc>(context).state;
      if (state.dates == null) {
        BlocProvider.of<HealthLogsBloc>(context)
            .add(const HealthLogsEvent.fatchDates());
      } else {
        opacityNotifier.value = true;
      }
    });
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: const RadialGradient(
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
      child: Column(
        children: [
          kHeight10,
          Row(
            children: [
              kWidth15,
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
              kWidth5,
              Text(
                "Health Logs",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Container(
                height: 50.dg,
                width: 50.dg,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: LinearGradient(
                      colors: [
                        kGradientColor,
                        kDarkColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(2, 4),
                      ),
                    ]),
                child: BlocBuilder<HealthLogsBloc, HealthLogsState>(
                  builder: (context, state) {
                    List<DateTime> dates = [];
                    if (state.dates != null) {
                      dates = state.dates!.userLogDates
                          .map((e) => e["date"] as DateTime)
                          .toList();
                    }
                    return ValueListenableBuilder(
                        valueListenable: opacityNotifier,
                        builder: (context, isVisible, _) {
                          return AnimatedOpacity(
                            duration: Duration(milliseconds: 500),
                            opacity: isVisible ? 1 : 0,
                            child: ElevatedButton(
                              onPressed: () async {
                                final date = await showDatePicker(
                                  initialDate: dates[0],
                                  context: context,
                                  firstDate: DateTime.now()
                                      .subtract(const Duration(days: 600)),
                                  lastDate: DateTime.now(),
                                  selectableDayPredicate: (day) {
                                    return dates.contains(day);
                                  },
                                  builder: (context, child) {
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                        colorScheme: ColorScheme.light(
                                          primary:
                                              kLightColor, // header background color
                                          onPrimary:
                                              kBlackColor, // header text color
                                          onSurface:
                                              Colors.black, // body text color
                                        ),
                                        textButtonTheme: TextButtonThemeData(
                                          style: TextButton.styleFrom(
                                            foregroundColor:
                                                kDarkColor, // button text color
                                          ),
                                        ),
                                      ),
                                      child: child!,
                                    );
                                  },
                                );
                                final stringDate = date != null
                                    ? dates
                                        .firstWhere(
                                            (element) => element == date)
                                        .toString()
                                        .split(" ")[0]
                                    : null;

                                if (stringDate != null) {
                                  BlocProvider.of<HealthLogsBloc>(context).add(
                                      HealthLogsEvent.fatchLogs(stringDate));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                padding: EdgeInsets.all(0),
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                elevation: 0,
                              ),
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.white,
                                size: 30.sp,
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
              kWidth20,
            ],
          ),
          kHeight10,
          SizedBox(
            height: 134.dg,
            child: BlocConsumer<HealthLogsBloc, HealthLogsState>(
              listener: (context, state) {
                state.fetDatesFailureOrSuccess.fold(() {}, (a) {
                  a.fold((l) {
                    showUrFineSnackbar(
                        context,
                        l.map(
                          serverFailure: (_) =>
                              "we are unable to process your request",
                          noInternet: (_) => "No internet connection",
                          clientFailure: (_) => "An unexpected error occurred",
                          authFailure: (value) => value.message,
                          otherFailure: (value) => "Someting went wrong",
                        ));
                  }, (r) {
                    Future.delayed(Duration(milliseconds: 700)).then((_) {
                      opacityNotifier.value = true;
                    });
                  });
                });
              },
              builder: (context, state) {
                if (state.isDatesFetching) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Shimmer.fromColors(
                      baseColor: kLightColor.withOpacity(0.4),
                      highlightColor: kLightColor.withOpacity(0.2),
                      child: Container(
                        width: 323.w,
                        height: 60.dg,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                    ),
                  );
                }
                if (state.dates == null) {
                  return SizedBox();
                }
                return ValueListenableBuilder(
                    valueListenable: opacityNotifier,
                    builder: (context, isVisible, _) {
                      return AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: isVisible ? 1 : 0,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return kWidth20;
                              }
                              return DateContainer(
                                date: state.dates!.userLogDates[index - 1]
                                    ["date"],
                                stringDate: state.dates!.userLogDates[index - 1]
                                    ["string_date"],
                              );
                            },
                            separatorBuilder: (context, index) => kWidth15,
                            itemCount: state.dates!.userLogDates.length + 1),
                      );
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
