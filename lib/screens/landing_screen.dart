import 'package:flutter/material.dart';
import 'package:zoo_app/screens/choose_plan_screen.dart';
import 'package:zoo_app/utils/text_styles.dart';
import 'package:zoo_app/widgets/custom_app_bar.dart';

import '../utils/strings.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //variable to be determined the height.
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/elephant.jpg',
            height: height,
            fit: BoxFit.fitHeight,
          ),
          Column(
            children: [
              CustomAppBar(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 32.0, right: 32.0, bottom: 32.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.READY_TO_WATCH,
                        style: TextStyles.bigHeadingTextStyle,
                      ),
                      TextSpan(text: '\n'),
                      TextSpan(
                        text: Strings.READY_TO_WATCH_DESC,
                        style: TextStyles.bodyTextStyle,
                      ),
                      TextSpan(text: '\n'),
                      TextSpan(text: '\n'),
                      TextSpan(
                        text: Strings.START_ENJOYING,
                        style: TextStyles.buttonTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChoosePlanScreen(),
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
