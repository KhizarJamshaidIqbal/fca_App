import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedDropdownButton extends StatelessWidget {
  final String labelText;
  bool isOptional;
  final ValueChanged<String?>? onChanged;
  final List<String> items;
  final String? value;

  RoundedDropdownButton({
    required this.labelText,
    this.isOptional = false,
    this.onChanged,
    required this.items,
    required this.value,
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
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
            if (isOptional == true)
              const Text(
                " *",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffB80000),
                  fontFamily: 'Poppins',
                ),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.grey),
          ),
          child: DropdownButton<String>(
            icon: SvgPicture.asset("assets/icons/dropdown_icon.svg"),
            onChanged: onChanged,
            style: TextStyle(
              color: const Color(0xff5F566B).withOpacity(0.8),
              fontFamily: 'Poppins',
            ),
            items: items.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            value: value,
            isExpanded: true,
            underline: const SizedBox(), // Remove the underline
          ),
        ),
      ],
    );
  }
}
