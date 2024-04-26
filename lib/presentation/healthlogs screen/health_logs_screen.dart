import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/health_logs/health_logs_bloc.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/healthlogs%20screen/widgets/health_log_card.dart';
import 'package:urfine/presentation/healthlogs%20screen/widgets/health_logs_appbar.dart';

class HealthLogsScreen extends StatelessWidget {
  const HealthLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HealthLogsAppbar(),
            BlocConsumer<HealthLogsBloc, HealthLogsState>(
              listener: (context, state) {
                state.fetDatesFailureOrSuccess.fold(() {}, (a) {
                  a.fold((l) {}, (r) {
                    if (state.logs == null &&
                        state.fetchLogsFailureOrSuccess.isNone()) {
                      BlocProvider.of<HealthLogsBloc>(context).add(
                          HealthLogsEvent.fatchLogs(
                              state.dates!.userLogDates.first["string_date"]));
                    }
                  });
                });
              },
              builder: (context, state) {
                if (state.fetDatesFailureOrSuccess.isNone() &&
                    state.fetchLogsFailureOrSuccess.isNone()) {
                  return SizedBox(
                    height: 550.h,
                    width: 393.w,
                    child: Center(child: loadingWidget),
                  );
                }
                if (state.isLogsFetching) {
                  return SizedBox(
                    height: 550.h,
                    width: 393.w,
                    child: Center(child: loadingWidget),
                  );
                }
                if (state.logs == null || state.logs!.healthLog.isEmpty) {
                  return SizedBox(
                    height: 550.h,
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
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return HelathLogCard(
                          healthLog: state.logs!.healthLog[index]
                      );
                    },
                    separatorBuilder: (context, index) => kHeight25,
                    itemCount: state.logs!.healthLog.length,
                  ),
                );
              },
            ),
            kHeight30,
          ],
        ),
      ),
    );
  }
}
