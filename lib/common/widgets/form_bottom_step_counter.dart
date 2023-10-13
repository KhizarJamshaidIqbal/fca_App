// ignore_for_file: use_key_in_widget_constructors

import 'package:fca/constants/colors.dart';
import 'package:flutter/material.dart';

class NumberRow extends StatelessWidget {
  final int targetNumber;

  NumberRow({required this.targetNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(20, (index) {
        final number = index + 1;
        final isTarget = number == targetNumber;

        return Container(
          width: 15,
          height: 15,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: isTarget
                ? Border.all(
                    color: globalColors.primaryColor, // Change to your desired highlight color
                    width: 2,
                  )
                : null,
          ),
          child: Center(
            child: Text(
              '$number',
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ),
        );
      }),
    );
  }
}
