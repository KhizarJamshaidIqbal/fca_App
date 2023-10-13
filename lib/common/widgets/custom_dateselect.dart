// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateSelectionTextField extends StatefulWidget {
  final String labelText;
  final String? selectedDate, optional;
  final Function(String)? onDateSelected;

  CustomDateSelectionTextField({
    required this.labelText,
    this.selectedDate,
    this.optional,
    this.onDateSelected,
  });

  @override
  State<CustomDateSelectionTextField> createState() =>
      _CustomDateSelectionTextFieldState();
}

class _CustomDateSelectionTextFieldState
    extends State<CustomDateSelectionTextField> {
  late TextEditingController _dateController; // Controller for the text field

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController(text: widget.selectedDate);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.selectedDate != null
          ? DateTime.parse(widget.selectedDate!)
          : DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      setState(() {
        _dateController.text = formattedDate; // Update the text field
        widget.onDateSelected?.call(formattedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectDate(context);
      },
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.labelText,
                style: const TextStyle(fontSize: 18),
              ),
              if (widget.optional != "")
                Text(
                  widget.optional ?? "",
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
            ],
          ),
          const SizedBox(height: 2), // Use SizedBox for spacing
          Container(
            height: 50, // Set your desired height here
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.grey),
            ),
            child: TextFormField(
              enabled: false,

              controller: _dateController, // Use the controller
              decoration: const InputDecoration(
                hintText: "2001-01-01",
                border: InputBorder.none,
                suffixIcon: Icon(Icons.date_range), // Trailing dropdown icon
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _dateController.dispose(); // Dispose of the controller
    super.dispose();
  }
}
