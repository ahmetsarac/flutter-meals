import 'package:flutter/material.dart';

extension CustomTextStyles on TextTheme {
  TextStyle get body1 {
    return const TextStyle(
      color: Color.fromRGBO(20, 51, 51, 1),
    );
  }

  TextStyle get body2 {
    return const TextStyle(
      color: Color.fromRGBO(20, 51, 51, 1),
    );
  }

  TextStyle get title {
    return const TextStyle(
      fontSize: 20,
      fontFamily: 'RobotoCondensed',
      fontWeight: FontWeight.bold,
    );
  }
}
