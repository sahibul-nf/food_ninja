import 'package:flutter/material.dart';
import 'package:food_ninja/resources/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFontStyles {
  static TextStyle title({Color? color, double? fontSize}) => GoogleFonts.lato(
        color: color ?? MyColors.black,
        fontSize: fontSize ?? 22,
        height: 1.3,
        fontWeight: FontWeight.w900,
      );
  static TextStyle subtitle({
    Color? color,
    double? fontSize,
  }) =>
      GoogleFonts.lato(
        color: color ?? MyColors.black,
        fontSize: fontSize ?? 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      );
  static TextStyle normal({
    Color? color,
    TextDecoration? decoration,
    double? height,
    double? fontSize,
  }) =>
      GoogleFonts.lato(
        color: color ?? MyColors.black,
        fontSize: fontSize ?? 14,
        letterSpacing: 0.3,
        height: height ?? 1.8,
        decoration: decoration,
      );
}
