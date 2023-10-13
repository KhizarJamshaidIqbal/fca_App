// ignore: file_names
//CustomTextWidget
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextDecoration textDecoration;
  final Color color;
  final int fontsize;
  final FontWeight fontWeight;

  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      required this.fontsize,
      required this.fontWeight,
      required this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontsize.toDouble(),
          fontFamily: 'Poppins-Black',
          decoration: textDecoration),
    );
  }
}
