import 'package:flutter/material.dart';
import 'package:zoo_app/utils/text_styles.dart';

class SubscriptionContainer extends StatelessWidget {
  final String imagePath, amount, text;

  SubscriptionContainer({
    super.key,
    required this.imagePath,
    required this.amount,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.srcATop),
              child: Image.asset(
                imagePath,
                height: height * 0.7 / 4.9,
                width: width - 32,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 15,
            left: 15,
            bottom: 0,
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyles.subscriptionTextStyle,
                ),
                const Spacer(),
                Text(
                  '\$ $amount',
                  style: TextStyles.subscriptionAmountTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
