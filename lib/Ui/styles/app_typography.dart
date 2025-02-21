import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle baseStyle = const TextStyle(fontFamily: "Montserrat");
  static TextStyle largeStyle = baseStyle.copyWith(fontSize: 32);
  static TextStyle mediumStyle = baseStyle.copyWith(fontSize: 16);

  static TextStyle secondaryBaseStyle = const TextStyle(fontFamily: "Roboto");
  static TextStyle secondaryLargeStyle = baseStyle.copyWith(fontSize: 32);
  static TextStyle secondaryMediumStyle = baseStyle.copyWith(fontSize: 16);
}
