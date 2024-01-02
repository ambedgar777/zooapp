import 'package:flutter/material.dart';
import 'package:zoo_app/utils/strings.dart';
import 'package:zoo_app/utils/text_styles.dart';
import 'package:zoo_app/widgets/custom_app_bar.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.40,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/elephant.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      CustomAppBar(
                        opacity: 1,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.6),
                          child: Text(
                            Strings.WELCOME_TO_PLANET,
                            style: TextStyles.welcomeHeadingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFB98959),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      Strings.RELATED_TO_YOU,
                      style: TextStyles.buttonTextStyle,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16),
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/tiger.jpg',
                                      fit: BoxFit.cover,
                                      width:
                                          MediaQuery.of(context).size.width * 0.5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text(
                                    Strings.LIFE_WITH_A_TIGER,
                                    style: TextStyles.body4TextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text(
                                    Strings.DESC,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/wild_animals.jpeg',
                                      fit: BoxFit.cover,
                                      width:
                                          MediaQuery.of(context).size.width * 0.5,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text(
                                    Strings.WILD_ANIMALS,
                                    style: TextStyles.body4TextStyle,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6.0),
                                  child: Text(
                                    Strings.DESC,
                                    style: TextStyles.body3TextStyle,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 16.0,
                    ),
                    child: Text(
                      Strings.QUICK_CATEGORIES,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF8C5835),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/bear.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              Strings.BEARS,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF8C5835),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/lion.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              Strings.LIONS,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF8C5835),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/reptiles.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              Strings.REPTILES,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF8C5835),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/pets.png',
                                height: 50,
                                width: 50,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              Strings.PETS,
                              style: TextStyles.body2TextStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
