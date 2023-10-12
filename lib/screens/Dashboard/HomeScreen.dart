// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:fca/utils/app_size.dart';
import 'package:fca/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../share/custom widgets/custom_Text_Widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: globalColors.BackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  textDecoration: TextDecoration.none,
                  text: 'Good morning,\nJohn',
                  color: globalColors.BlackColor,
                  fontsize: 24,
                  fontWeight: FontWeight.w700,
                ),
                25.h,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      textDecoration: TextDecoration.none,
                      text: 'Next Appointment',
                      color: globalColors.BlackColor,
                      fontsize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      text: 'See All',
                      color: globalColors.primaryColor,
                      fontsize: 12,
                      fontWeight: FontWeight.w700,
                      textDecoration: TextDecoration.underline,
                    ),
                  ],
                ),
                20.h,
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF705598), Color(0xFF4A3071)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                            text: 'First Choice Anderson FNP',
                            color: globalColors.WhiteColor,
                            fontsize: 16,
                            fontWeight: FontWeight.bold,
                            textDecoration: TextDecoration.none),
                        12.h,
                        const CustomText(
                            text: 'Semaglutide Inj  |  1st Choice - 5 Mins',
                            color: globalColors.WhiteColor,
                            fontsize: 13,
                            fontWeight: FontWeight.w400,
                            textDecoration: TextDecoration.none),
                        10.h,
                        Row(
                          children: [
                            Flexible(
                              child: SvgPicture.asset(
                                'assets/images/calendar.svg',
                              ),
                            ),
                            5.w,
                            const CustomText(
                                text: '10 Oct',
                                color: globalColors.WhiteColor,
                                fontsize: 13,
                                fontWeight: FontWeight.w500,
                                textDecoration: TextDecoration.none),
                            10.w,
                            Container(
                              height: 14,
                              width: 2.0,
                              color: Color(0xff816D9D),
                            ),
                            10.w,
                            Flexible(
                                child: SvgPicture.asset(
                              'assets/images/clock.svg',
                            )),
                            5.w,
                            const CustomText(
                                text: '08:00 AM - 08:30 AM',
                                color: globalColors.WhiteColor,
                                fontsize: 13,
                                fontWeight: FontWeight.w500,
                                textDecoration: TextDecoration.none),
                            Spacer(),
                            Container(
                              width: 90,
                              height: 25,
                              decoration: BoxDecoration(
                                color: globalColors.WhiteColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0)),
                              ),
                              child: Center(
                                child: CustomText(
                                    text: 'Telehealth',
                                    color: Color(0xff0172B8),
                                    fontsize: 13,
                                    fontWeight: FontWeight.w400,
                                    textDecoration: TextDecoration.none),
                              ),
                            ),
                          ],
                        ),
                        10.h,
                        Row(
                          children: [
                            SizedBox(
                              height: 36,
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      backgroundColor: globalColors.WhiteColor),
                                  child: CustomText(
                                      text: 'Reschedule',
                                      color: globalColors.primaryColor,
                                      fontsize: 14,
                                      fontWeight: FontWeight.w500,
                                      textDecoration: TextDecoration.none)),
                            ),
                            Spacer(),
                            SizedBox(
                              height: 36,
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      backgroundColor:
                                          globalColors.SecondaryColor1),
                                  child: CustomText(
                                      text: 'Accept',
                                      color: globalColors.WhiteColor,
                                      fontsize: 14,
                                      fontWeight: FontWeight.w500,
                                      textDecoration: TextDecoration.none)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                15.h,
                Row(
                  children: [
                    const CustomText(
                      textDecoration: TextDecoration.none,
                      text: 'Medications',
                      color: globalColors.BlackColor,
                      fontsize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    10.w,
                    const CustomText(
                      textDecoration: TextDecoration.none,
                      text: '(12 Active Medications)',
                      color: globalColors.LightpurpleColor,
                      fontsize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    const Spacer(),
                    const CustomText(
                      text: 'See All',
                      color: globalColors.primaryColor,
                      fontsize: 12,
                      fontWeight: FontWeight.w700,
                      textDecoration: TextDecoration.underline,
                    ),
                  ],
                ),
                15.h,
                Container(
                  color: globalColors.BackgroundColor,
                  height: 98,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fca_data.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .131,
                            width: MediaQuery.of(context).size.width * .52,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                10.h,
                                Row(
                                  children: [
                                    12.w,
                                    CircleAvatar(
                                        backgroundColor: fca_data[index]
                                            ["color"],
                                        radius: 18,
                                        child: SizedBox(
                                          height: 18,
                                          width: 18,
                                          child: SvgPicture.asset(
                                              fca_data[index]["main_img"]),
                                        )),
                                    12.w,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                            text: fca_data[index]["tital"],
                                            color: globalColors.BlackColor,
                                            fontsize: 14,
                                            fontWeight: FontWeight.bold,
                                            textDecoration:
                                                TextDecoration.none),
                                        CustomText(
                                            text: fca_data[index]["subtital"],
                                            color:
                                                globalColors.LightpurpleColor,
                                            fontsize: 12,
                                            fontWeight: FontWeight.w500,
                                            textDecoration:
                                                TextDecoration.none),
                                      ],
                                    )
                                  ],
                                ),
                                15.h,
                                Container(
                                  width: double.infinity,
                                  height: 1,
                                  color: globalColors.LightGreyColor,
                                ),
                                9.h,
                                CustomText(
                                  text: fca_data[index]["description"],
                                  color: globalColors.LightpurpleColor,
                                  fontsize: 13,
                                  fontWeight: FontWeight.w700,
                                  textDecoration: TextDecoration.none,
                                ),
                              ],
                            ),
                          ),
                          10.w,
                        ],
                      );
                    },
                  ),
                ),
                15.h,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      textDecoration: TextDecoration.none,
                      text: 'Clinical Recommendations',
                      color: globalColors.BlackColor,
                      fontsize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    CustomText(
                      text: 'See All',
                      color: globalColors.primaryColor,
                      fontsize: 12,
                      fontWeight: FontWeight.bold,
                      textDecoration: TextDecoration.underline,
                    ),
                  ],
                ),
                15.h,
                Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 210,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                                top: -13,
                                child: Image.asset('assets/images/Mask.png')),
                            Positioned(
                              left: 0,
                              top: -5,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20.0),
                                child: CustomText(
                                    text: 'Payments',
                                    color: globalColors.BlackColor,
                                    fontsize: 18,
                                    fontWeight: FontWeight.w600,
                                    textDecoration: TextDecoration.none),
                              ),
                            ),
                            Positioned(
                                left: 20,
                                top: 45.0,
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      colors: [
                                        Color(0xFF3CBCEB),
                                        Color(0xFF0072B8)
                                      ],
                                    ),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/images/invoice.svg',
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                )),
                            Positioned(
                              left: 88,
                              top: 53.0,
                              child: CustomText(
                                  text: 'Payment\nOverdue',
                                  color: globalColors.BlackColor,
                                  fontsize: 13,
                                  fontWeight: FontWeight.w500,
                                  textDecoration: TextDecoration.none),
                            ),
                            Positioned(
                                left: 208,
                                top: 50.0,
                                child: SvgPicture.asset(
                                  'assets/images/dollar.svg',
                                )),
                            Positioned(
                              left: 225,
                              top: 47.0,
                              child: CustomText(
                                  text: '264.67',
                                  color: Color(0xff291E3A),
                                  fontsize: 36,
                                  fontWeight: FontWeight.w700,
                                  textDecoration: TextDecoration.none),
                            ),
                            Positioned(
                                left: 0,
                                top: 115.0,
                                right: 0,
                                child: Container(
                                  height: 2.0,
                                  width: 362,
                                  color: globalColors.LightGreyColor,
                                )),
                            Positioned(
                              left: 80,
                              top: 130.0,
                              child: CustomText(
                                  text: 'Last Payment:',
                                  color: globalColors.LightpurpleColor,
                                  fontsize: 12,
                                  fontWeight: FontWeight.w600,
                                  textDecoration: TextDecoration.none),
                            ),
                            Positioned(
                              left: 160,
                              top: 130.0,
                              child: CustomText(
                                  text: '\$345.65 at 8/25/2023',
                                  color: globalColors.SecondaryColor1,
                                  fontsize: 12,
                                  fontWeight: FontWeight.bold,
                                  textDecoration: TextDecoration.none),
                            ),
                            Positioned(
                              left: 20,
                              top: 160.0,
                              child: SizedBox(
                                height: 36,
                                width: 150,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      side: BorderSide(
                                        color: globalColors.primaryColor,
                                        width: 1.5,
                                      ),
                                      backgroundColor: globalColors.WhiteColor,
                                    ),
                                    child: CustomText(
                                        text: 'View History',
                                        color: globalColors.primaryColor,
                                        fontsize: 14,
                                        fontWeight: FontWeight.w500,
                                        textDecoration: TextDecoration.none)),
                              ),
                            ),
                            Positioned(
                              left: 197,
                              top: 160.0,
                              child: SizedBox(
                                height: 36,
                                width: 150,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                      side: BorderSide(
                                        color: globalColors.primaryColor,
                                        width: 1.5,
                                      ),
                                      backgroundColor:
                                          globalColors.primaryColor,
                                    ),
                                    child: CustomText(
                                        text: 'Pay Now',
                                        color: globalColors.WhiteColor,
                                        fontsize: 14,
                                        fontWeight: FontWeight.w500,
                                        textDecoration: TextDecoration.none)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                60.h,
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
            height: 50.0,
            width: 230.0,
            child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: globalColors.primaryColor,
              onPressed: () {},
              label: CustomText(
                  text: 'Schedule New Appointment',
                  color: globalColors.WhiteColor,
                  fontsize: 12,
                  fontWeight: FontWeight.w500,
                  textDecoration: TextDecoration.none),
              icon: Icon(Icons.add),
            )),
      ),
    );
  }

  List fca_data = [
    {
      "color": const Color(0xffF2EAFE),
      "main_img": "assets/images/pills.svg",
      "tital": "metFORMIN",
      "subtital": "(500 mg tablet)",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": globalColors.BlueColor,
      "main_img": "assets/images/syringe.svg",
      "tital": "Trulicity",
      "subtital": "0.75-0.5 mL Pen Injector",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": const Color(0xffF2EAFE),
      "main_img": "assets/images/pills.svg",
      "tital": "metFORMIN",
      "subtital": "(500 mg tablet)",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": globalColors.BlueColor,
      "main_img": "assets/images/syringe.svg",
      "tital": "Trulicity",
      "subtital": "0.75-0.5 mL Pen Injector",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": const Color(0xffF2EAFE),
      "main_img": "assets/images/pills.svg",
      "tital": "metFORMIN",
      "subtital": "(500 mg tablet)",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": globalColors.BlueColor,
      "main_img": "assets/images/syringe.svg",
      "tital": "Trulicity",
      "subtital": "0.75-0.5 mL Pen Injector",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": const Color(0xffF2EAFE),
      "main_img": "assets/images/pills.svg",
      "tital": "metFORMIN",
      "subtital": "(500 mg tablet)",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": globalColors.BlueColor,
      "main_img": "assets/images/syringe.svg",
      "tital": "Trulicity",
      "subtital": "0.75-0.5 mL Pen Injector",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": const Color(0xffF2EAFE),
      "main_img": "assets/images/pills.svg",
      "tital": "metFORMIN",
      "subtital": "(500 mg tablet)",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": globalColors.BlueColor,
      "main_img": "assets/images/syringe.svg",
      "tital": "Trulicity",
      "subtital": "0.75-0.5 mL Pen Injector",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": const Color(0xffF2EAFE),
      "main_img": "assets/images/pills.svg",
      "tital": "metFORMIN",
      "subtital": "(500 mg tablet)",
      "description": "Prescribed on 8/25/2023",
    },
    {
      "color": globalColors.BlueColor,
      "main_img": "assets/images/syringe.svg",
      "tital": "Trulicity",
      "subtital": "0.75-0.5 mL Pen Injector",
      "description": "Prescribed on 8/25/2023",
    },
  ];
}
