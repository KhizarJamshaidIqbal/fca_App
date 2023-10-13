// ignore_for_file: use_key_in_widget_constructors

import 'package:fca/constants/app_size.dart';
import 'package:fca/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/widgets/rounded_btn.dart';

class AuthScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FractionallySizedBox(
        widthFactor: 1.0, // 100% width
        heightFactor: 1.0, // 100% height
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            const Color(0xff705598)
                .withOpacity(0.9), // Color overlay with opacity
            BlendMode.overlay, // Blend mode (you can adjust this)
          ),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/image_2.png", // Background SVG image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Center(child: SvgPicture.asset("assets/images/logo.svg")),
                    10.h,
                    const Text(
                      "First Choice \nAnderson FNP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          fontFamily: 'Poppins=Black',
                          color: Color(0xffFFFFFF)),
                    ),
                    10.h,
                    const Text(
                      "Every health journey begins \nwith a single step",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontFamily: 'Poppins=Black',
                          color: Color(0xffFFFFFF)),
                    ),
                    const Spacer(),
                    RoundButton(
                      title: "Log in",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      color: Colors.white,
                    ),
                    20.h,
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Create Your Account",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins-Black',
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                    17.h
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
