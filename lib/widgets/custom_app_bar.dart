import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/utils/strings.dart';
import 'package:zoo_app/utils/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final double opacity;

  const CustomAppBar({super.key, this.opacity = 0.8});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        padding: const EdgeInsets.only(
          top: 48,
          left: 16,
          right: 16,
        ),
        child: Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: Strings.APP_NAME,
                  style: TextStyles.appNameTextStyle,
                ),
                TextSpan(text: '\n'),
                TextSpan(
                  text: Strings.TAG_LINE,
                  style: TextStyles.tagLineTextStyle,
                ),
              ]),
            ),
            Spacer(),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
