// ignore_for_file: file_names, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names

import 'package:fca/share/custom%20widgets/custom_Text_Widget.dart';
import 'package:fca/utils/app_size.dart';
import 'package:fca/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List fca_data = [
      {
        "color": const Color(0xffF2EAFE),
        "main_img": "assets/images/pills.png",
        "tital": "metFORMIN",
        "subtital": "(500 mg tablet)",
        "description": "Prescribed on 8/25/2023",
      },
      {
        "color": globalColors.BlueColor,
        "main_img": "assets/images/syringe.png",
        "tital": "Trulicity",
        "subtital": "0.75-0.5 mL Pen Injector",
        "description": "Prescribed on 8/25/2023",
      },
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: globalColors.BackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.h,
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
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
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
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        15.h,
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/image_1.png'),
                              radius: 25,
                            ),
                            15.w,
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: 'Talisha Anderson',
                                    color: globalColors.BlackColor,
                                    fontsize: 16,
                                    fontWeight: FontWeight.w600,
                                    textDecoration: TextDecoration.none),
                                CustomText(
                                    text: 'Anderson FNP Health',
                                    color: globalColors.GreyColor,
                                    fontsize: 14,
                                    fontWeight: FontWeight.w400,
                                    textDecoration: TextDecoration.none),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.more_vert_outlined,
                              size: 25,
                            )
                          ],
                        ),
                        12.h,
                        Row(
                          children: [
                            const CustomText(
                                text: 'Semaglutide Inj  |  1st Choice',
                                color: globalColors.primaryColor,
                                fontsize: 12,
                                fontWeight: FontWeight.w400,
                                textDecoration: TextDecoration.none),
                            const Spacer(),
                            Container(
                              height: 7,
                              width: 7,
                              decoration: const BoxDecoration(
                                  color: Color(0xff5F566B),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            10.w,
                            const CustomText(
                                text: 'Charge not started',
                                color: Color(0xff5F566B),
                                fontsize: 12,
                                fontWeight: FontWeight.w400,
                                textDecoration: TextDecoration.none),
                          ],
                        ),
                        10.h,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 74,
                              decoration: const BoxDecoration(
                                color: Color(0xffF2EAFE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/images/calendar.png'),
                                    const CustomText(
                                        text: '10 Oct',
                                        color: globalColors.primaryColor,
                                        fontsize: 12,
                                        fontWeight: FontWeight.w400,
                                        textDecoration: TextDecoration.none),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 161,
                              decoration: const BoxDecoration(
                                color: globalColors.BlueColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/images/clock.png'),
                                    const CustomText(
                                        text: '08:00 AM - 08:30 AM',
                                        color: globalColors.DarkBlueColor,
                                        fontsize: 12,
                                        fontWeight: FontWeight.w400,
                                        textDecoration: TextDecoration.none),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 74,
                              decoration: const BoxDecoration(
                                color: globalColors.LightPinkColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomText(
                                        text: 'Online',
                                        color: globalColors.AccentColor,
                                        fontsize: 12,
                                        fontWeight: FontWeight.w400,
                                        textDecoration: TextDecoration.none),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fca_data.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 100,
                            width: 200,
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
                                        child: Image.asset(
                                            fca_data[index]["main_img"])),
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
                                            fontWeight: FontWeight.w400,
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
                                10.h,
                                CustomText(
                                  text: fca_data[index]["description"],
                                  color: globalColors.LightpurpleColor,
                                  fontsize: 12,
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
                20.h,
                Container(
                  height: 200,
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
                      15.h,
                      Row(
                        children: [
                          20.w,
                          CircleAvatar(
                              radius: 18,
                              backgroundColor: const Color(0xffF2EAFE),
                              child: Image.asset('assets/images/info.png')),
                          15.w,
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: 'Preventive care and screening:',
                                  color: globalColors.LightpurpleColor,
                                  fontsize: 12,
                                  fontWeight: FontWeight.w400,
                                  textDecoration: TextDecoration.none),
                              CustomText(
                                  text: 'Influenza Immunization',
                                  color: globalColors.BlackColor,
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  textDecoration: TextDecoration.none),
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
                      10.h,
                      Row(
                        children: [
                          20.w,
                          const CircleAvatar(
                            radius: 18,
                            backgroundColor: globalColors.BlueColor,
                            child: CustomText(
                                text: 'A',
                                color: globalColors.DarkBlueColor,
                                fontsize: 13,
                                fontWeight: FontWeight.bold,
                                textDecoration: TextDecoration.none),
                          ),
                          15.w,
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: 'Cervical Cancer: Screening',
                                  color: globalColors.LightpurpleColor,
                                  fontsize: 12,
                                  fontWeight: FontWeight.w400,
                                  textDecoration: TextDecoration.none),
                              CustomText(
                                  text: 'Women Aged 21 - 65 Years',
                                  color: globalColors.BlackColor,
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  textDecoration: TextDecoration.none),
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
                      10.h,
                      Row(
                        children: [
                          20.w,
                          const CircleAvatar(
                            radius: 18,
                            backgroundColor: globalColors.LightPinkColor,
                            child: CustomText(
                                text: 'A',
                                color: globalColors.AccentColor,
                                fontsize: 13,
                                fontWeight: FontWeight.bold,
                                textDecoration: TextDecoration.none),
                          ),
                          15.w,
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: 'HIV Infection Screening',
                                  color: globalColors.LightpurpleColor,
                                  fontsize: 12,
                                  fontWeight: FontWeight.w400,
                                  textDecoration: TextDecoration.none),
                              CustomText(
                                  text:
                                      'Adolescents and Adults Aged 15 - 65 ...',
                                  color: globalColors.BlackColor,
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  textDecoration: TextDecoration.none),
                            ],
                          )
                        ],
                      ),
                      10.h,
                    ],
                  ),
                ),
                25.h,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
