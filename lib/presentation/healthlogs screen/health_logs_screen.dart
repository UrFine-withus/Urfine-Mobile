import 'package:flutter/material.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HelathLogCard();
                },
                separatorBuilder: (context, index) => kHeight25,
                itemCount: 10,
              ),
            ),
            kHeight30,
          ],
        ),
      ),
    );
  }
}
