// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:fca/constants/app_size.dart';
import 'package:fca/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../common/widgets/custom_textField.dart';
import '../../../common/widgets/rounded_btn.dart';
import '../../../share/custom bottom navigation bar/custom_bottom_navigation_bar.dart';
import 'auth_screen_main.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image_1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 0,
                        top: -125,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: globalColors.whiteColor,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AuthScreenMain(),
                                ));
                          },
                        ),
                      ),
                      
                      Container(
                        height: screenHeight * 0.78,
                        width: screenWidth,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                100.h,
                                const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w800,
                                      fontFamily: 'Poppins-Black',
                                      color: Color(0xff291E3A)),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.75,
                                  child: const Text(
                                    "Enter your Email Address and Password to access your FCA Mobile Profile",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins-Black',
                                        color: Color(0xff5F566B)),
                                  ),
                                ),
                                33.h,
                                RoundedTextField(
                                  labelText: "Email Address",
                                  isOptional: true,
                                  hintText: "Type email address here...",
                                ),
                                20.h,
                                RoundedTextField(
                                  labelText: "Password",
                                  ispassword: true,
                                  isOptional: true,
                                  hintText: "Type Password here...",
                                ),
                                15.h,
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forgot Your Password?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff705598),
                                        fontFamily: 'Poppins-Black',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                30.h,
                                RoundButton(
                                  title: "Log In",
                                  onPress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              BottomNavigationbar(),
                                        ));
                                  },
                                  color: globalColors.appColor,
                                  textcolor: Colors.white,
                                ),
                                16.h,
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Not have an account?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: globalColors.scheme1,
                                            fontFamily: 'Poppins-Black',
                                            fontWeight: FontWeight.w400)),
                                    Text(" Sign Up Here",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontFamily: 'Poppins-Black',
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                                16.h,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -100,
                        left: 0,
                        right: 0,
                        child: Center(
                            child: Container(
                          width: 170,
                          height: 170,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              tileMode: TileMode.mirror,
                              colors: const [
                                Color(0xFF3CBCEB),
                                Color(0xFF0072B8),
                              ],
                            ),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/images/logo.svg',
                              height: 90,
                              width: 80,
                            ),
                          ),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
