import 'package:flutter/material.dart';

class HTextStyles {
  static TextStyle body({
    double fontSize = 14,
    FontWeight? fontWeight,
    Color? color,
    TextDecoration? decoration,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
    );
  }

  static TextStyle h2({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.bold,
    Color? color,
    TextDecoration? decoration,
  }) {
    return body(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
      decoration: decoration,
    );
  }
}
