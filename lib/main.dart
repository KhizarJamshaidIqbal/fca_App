// ignore_for_file: prefer_const_constructors
import 'package:fca/share/custom%20bottom%20navigation%20bar/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FCA',
      debugShowCheckedModeBanner: false,
      home: BottomNavigationbar(),
    );
  }
}
