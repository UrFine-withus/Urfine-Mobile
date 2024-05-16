import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/application/authentication/authentication_bloc.dart';
import 'package:urfine/application/dietry_plan_chat/dietry_chat_bloc.dart';
import 'package:urfine/domain/di/injectable.dart';
import 'package:urfine/domain/token_manager/user_data_model.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';
import 'package:urfine/presentation/home/widget/care_request_card.dart';
import 'package:urfine/presentation/home/widget/diet_suggestion_widget.dart';
import 'package:urfine/presentation/home/widget/home_choice_widget.dart';
import 'package:urfine/presentation/home/widget/logout_alert.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final choises = [
    {
      "name": "Check-up History",
      "image": "assets/home page/checkup.png",
      "page": "/checkupHistory"
    },
    {
      "name": "Med Records",
      "image": "assets/home page/medrec.png",
      "page": "/medrec",
    },
    {
      "name": "Health Logs",
      "image": "assets/home page/heart.png",
      "page": "/healthLogs",
    },
    {
      "name": "Emergency Contacts",
      "image": "assets/home page/emergency.png",
      "page": "/emergency",
    },
  ];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final id = await FirebaseMessaging.instance.getToken();
      final state = BlocProvider.of<DietryChatBloc>(context).state;
      if (!state.isOldMessagesRetrived) {
        log("retriving messages");
        BlocProvider.of<DietryChatBloc>(context)
            .add(DietryChatEvent.retriveMsgDb());
      }

      if (state.userDetails == null) {
        BlocProvider.of<DietryChatBloc>(context)
            .add(const DietryChatEvent.fetchUserDetails());
      }
    });
    return Scaffold(
      body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          state.logout.fold(
            () {},
            (a) => a.fold(
              (l) {
                showUrFineSnackbar(context, "something went wrong");
              },
              (r) {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/login", (route) => false);
              },
            ),
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.0.sp,
                    right: 20.0.sp,
                    top: 20.0.sp,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //top container of home screen with the choices to go to different pages
                        HomeTopChoicesContainer(choises: choises),
                        kHeight20,
                        //palliative care request card to navigate to the palliative care request page
                        CareRequestCard(),
                        kHeight20,
                        //diet suggestion widget to navigate to the diet suggestion page
                        DietSuggestionWidget()
                      ],
                    ),
                  ),
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
    );
  }
}

class HomeTopChoicesContainer extends StatelessWidget {
  HomeTopChoicesContainer({
    super.key,
    required this.choises,
  });
  final List<Map<String, String>> choises;
  String name = "";
  @override
  Widget build(BuildContext context) {
    name =
        "${getIt<UserDataModel>().name}${getIt<UserDataModel>().name.isEmpty ? "" : "!"}";
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: 23.h,
        bottom: 42.h,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kExtraLightColor,
            kLightColor.withOpacity(0.6),
          ],
        ),
        borderRadius: BorderRadius.circular(11.0.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi, $name",
                style: TextStyle(
                  fontSize: 21.0.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return LogoutAlert();
                      });
                },
                child: Image(
                  height: 33.dg,
                  width: 33.dg,
                  image: AssetImage(
                    "assets/home page/logout.png",
                  ),
                ),
              )
            ],
          ),
          kHeight5,
          Text(
            "How do you feel today?",
            style: TextStyle(
              fontSize: 13.0.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          kHeight10,
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: choises.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 9.w,
              crossAxisCount: 2,
              childAspectRatio: 161 / 111,
              mainAxisSpacing: 25.h,
            ),
            itemBuilder: (context, index) {
              return HomeChoiceWidget(
                name: choises[index]["name"]!,
                imageUrl: choises[index]["image"]!,
                route: choises[index]["page"]!,
              );
            },
          )
        ],
      ),
    );
  }
}
