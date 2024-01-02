import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/screens/dashboard_screen.dart';
import 'package:zoo_app/utils/strings.dart';
import 'package:zoo_app/utils/text_styles.dart';
import 'package:zoo_app/widgets/custom_app_bar.dart';
import 'package:zoo_app/widgets/subscription_container.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Text(
                  Strings.CHOOSE_A_PLAN,
                  style: TextStyles.headingTextStyle,
                ),
              ),
              SubscriptionContainer(
                imagePath: 'assets/images/weekly.jpg',
                amount: '1.99',
                text: Strings.ONE_WEEK_SUBSCRIPTION,
              ),
              SubscriptionContainer(
                imagePath: 'assets/images/monthly.jpg',
                amount: '4.39',
                text: Strings.ONE_MONTH_SUBSCRIPTION,
              ),
              SubscriptionContainer(
                imagePath: 'assets/images/3monthly.jpg',
                amount: '9.99',
                text: Strings.THREE_MONTH_SUBSCRIPTION,
              ),
              SubscriptionContainer(
                imagePath: 'assets/images/6monthly.jpg',
                amount: '13.99',
                text: Strings.SIX_MONTH_SUBSCRIPTION,
              ),
            ],
          ),
          Positioned(
            bottom: 32,
            left: 16,
            child: Text(
              Strings.LASR_STEP_TO_ENJOY,
              style: TextStyles.buttonTextStyle,
            ),
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashBoardScreen(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFFDAD4CC).withOpacity(0.8),
                ),
                child: Align(
                  alignment: Alignment(-0.4, -0.4),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
