import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  TextStyles._();

  static final TextStyle appNameTextStyle = GoogleFonts.ubuntu(
    fontSize: 26,
    fontWeight: FontWeight.w800,
    color: Colors.white.withOpacity(0.7),
  );

  static final TextStyle tagLineTextStyle = GoogleFonts.ubuntu(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle bigHeadingTextStyle = GoogleFonts.ubuntu(
    fontSize: 60,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static final TextStyle welcomeHeadingTextStyle = GoogleFonts.ubuntu(
    fontSize: 50,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );

  static final TextStyle bodyTextStyle = GoogleFonts.ubuntu(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final TextStyle body2TextStyle = GoogleFonts.ubuntu(
    fontSize: 16,
    letterSpacing: 1.4,
    fontWeight: FontWeight.w700,
    color: Colors.white.withOpacity(0.5),
  );

  static final TextStyle body3TextStyle = GoogleFonts.ubuntu(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    height: 1.2,
    color: Colors.white.withOpacity(0.8),
  );

  static final TextStyle body4TextStyle = GoogleFonts.ubuntu(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 1,
    color: Colors.white.withOpacity(0.8),
  );


  static final TextStyle buttonTextStyle = GoogleFonts.ubuntu(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle headingTextStyle = GoogleFonts.ubuntu(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle subscriptionTextStyle = GoogleFonts.ubuntu(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle subscriptionAmountTextStyle = GoogleFonts.ubuntu(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle titleTextStyle = GoogleFonts.ubuntu(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
