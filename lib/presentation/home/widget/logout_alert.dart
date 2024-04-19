import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/authentication/authentication_bloc.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class LogoutAlert extends StatelessWidget {
  const LogoutAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Image.asset(
        width: 74.w,
        height: 100.h,
        "assets/home page/logout_alert.png",
      ),
      content: Text(
        "You're leaving..\nAre you sure?",
        style: TextStyle(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w300,
          color: kBlackColor,
        ),
        textAlign: TextAlign.center,
      ),
      actions: [
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 179,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.r),
                    ),
                    border: Border.all(
                      color: kLightColor,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "No, go back",
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w700,
                        color: kLightColor,
                      ),
                    ),
                  ),
                ),
              ),
              kHeight10,
              GestureDetector(
                onTap: () {
                  BlocProvider.of<AuthenticationBloc>(context).add(
                    const AuthenticationEvent.logout(),
                  );
                },
                child: Container(
                  width: 179,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: kLightColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Yes Logout",
                      style: TextStyle(
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              kHeight10,
            ],
          ),
        )
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
    );
  }
}
