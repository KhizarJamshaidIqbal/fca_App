// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'dart:async';

import 'package:fca/constants/app_size.dart';
import 'package:fca/constants/colors.dart';
import 'package:fca/features/auth/screens/auth_screen_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  String token;
  SplashScreen({super.key, required this.token});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //         builder: (context) =>
    //             widget.token != "" ? AuthScreenMain() : AuthScreenMain()),
    //   );
    // });
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                AuthScreenMain()
                ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColors.appColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              height: 175,
              width: 150,
              child: SvgPicture.asset("assets/images/logo.svg",
                  fit: BoxFit.contain)),
          5.h,
          const Text(
            "First Choice Anderson FNP",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 40,
                fontFamily: 'Poppins-Black',
                color: Color(0xffFFFFFF)),
          )
        ],
      ),
    );
  }
}
