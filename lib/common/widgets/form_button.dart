// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fca/constants/colors.dart';

class CustomFormElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  CustomFormElevatedButton({
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: globalColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          minimumSize: const Size.fromHeight(48),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(width: 6), // Adjust the spacing as needed
            SvgPicture.asset('assets/icons/right_arrow.svg'),
          ],
        ),
      ),
    );
  }
}
