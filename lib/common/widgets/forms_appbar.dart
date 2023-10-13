import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildCustomFormAppBar({VoidCallback? leadingCallback}) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: leadingCallback,
      icon: SvgPicture.asset("assets/icons/cross_form.svg"),
    ),
    title: const Text(
      "Patient Form",
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color: Color(0xff291E3A),
      ),
    ),
    centerTitle: true,
  );
}
