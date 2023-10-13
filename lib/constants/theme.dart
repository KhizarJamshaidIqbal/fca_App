// ignore_for_file: unused_element

import 'package:flutter/material.dart';

ThemeData theme(context) {
  MaterialColor buildMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  return ThemeData(
    // scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    useMaterial3: false,
    fontFamily: 'Poppins',
    inputDecorationTheme: inputDecorationTheme(context),
    // visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme(context) {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.all(12),
    filled: true,
    // fillColor: ,
    labelStyle: Theme.of(context).textTheme.labelMedium,
    hintStyle: Theme.of(context).textTheme.labelMedium,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xffE3E0E7), // Default border color
      ),
    ),
  );
}
