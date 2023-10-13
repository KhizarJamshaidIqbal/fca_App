import 'package:flutter/material.dart';

Widget FormHeader(
    {required BuildContext context,
    required String title,
    required int stepNo}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "$stepNo: $title",
        style: const TextStyle(
            fontSize: 16,
            color: Color(0xff291E3A),
            fontWeight: FontWeight.w700),
      ),
      Row(
        children: [
          const Text(
            "Step",
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff0072B8),
                fontWeight: FontWeight.w700),
          ),
          Text(
            " $stepNo of 20",
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff291E3A),
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    ],
  );
}
