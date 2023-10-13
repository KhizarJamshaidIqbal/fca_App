// ignore_for_file: must_be_immutable, file_names

import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String labelText, hintText;
  bool? isOptional;
  final TextEditingController? controller;
  final TextInputType? inputType;
  bool ispassword;

  RoundedTextField({
    super.key,
    required this.labelText,
    this.isOptional = false,
    this.hintText = "",
    this.inputType,
    this.controller,
    this.ispassword=false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              labelText,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins-Black',
              ),
            ),
            if (isOptional == true)
              const Text(
                " *",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffB80000),
                  fontFamily: 'Poppins-Black',
                ),
              ),
          ],
        ),
        10.h,
        TextField(
          controller: controller,
          keyboardType: inputType,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: ispassword == true ? const Icon(Icons.remove_red_eye_outlined): null,
            hintStyle: TextStyle(
              color: Color(0xff5F566B).withOpacity(0.5),
              fontFamily: 'Poppins',
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(color: Colors.white)),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 192, 189, 195), width: 1.5),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          ),
        ),
      ],
    );
  }
}
