import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urfine/presentation/common_widgets/cylinder_decoration_widget.dart';
import 'package:urfine/presentation/common_widgets/large_gradient_button.dart';
import 'package:urfine/presentation/core/colors.dart';
import 'package:urfine/presentation/core/const_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 8,
            child: Center(
              child: Image(
                image: AssetImage('assets/welcome/welcome.png'),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 40.0.sp,
                    fontWeight: FontWeight.bold,
                    color: kLightColor,
                  ),
                ),
                Text(
                  '''Welcome to the UrFine.
 Where comfort and support await you.''',
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                kHeight25,
                LargeGradientButton(
                  buttonText: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                ),
                kHeight10,
                const CylinderDecorationWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
