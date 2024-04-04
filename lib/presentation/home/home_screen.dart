import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      "page": ""
    },
    {
      "name": "Med Records",
      "image": "assets/home page/medrec.png",
      "page": "",
    },
    {
      "name": "Health Logs",
      "image": "assets/home page/heart.png",
      "page": "",
    },
    {
      "name": "Emergency Contacts",
      "image": "assets/home page/emergency.png",
      "page": "/emergency",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
    );
  }
}

class HomeTopChoicesContainer extends StatelessWidget {
  const HomeTopChoicesContainer({
    super.key,
    required this.choises,
  });
  final List<Map<String, String>> choises;

  @override
  Widget build(BuildContext context) {
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
                "Hi, Nived !",
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
