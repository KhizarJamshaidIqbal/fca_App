// ignore_for_file: must_be_immutable

import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';

class CustomAppBarLoading extends StatelessWidget {
  CustomAppBarLoading(
      {super.key,
      required this.onBackArrowPressed,
      required this.progressValue,
      required this.stepNo});
  final double progressValue;
  final VoidCallback onBackArrowPressed;
  int stepNo;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(color: Color(0xffFBF9F8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logo/logo.jpg",
                  height: 60,
                  width: 60,
                ),
                10.w,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PATIENT FORM",
                      style: TextStyle(fontSize: 20),
                    ),
                    5.h,
                    SizedBox(
                      width: context.screenWidth * 0.52,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: progressValue,
                          minHeight: 8,
                          backgroundColor: const Color(0xffEEF0F1),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xff2B865A)),
                        ),
                      ),
                    ),
                    5.h,
                    Text(
                      "Step $stepNo to 20",
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
