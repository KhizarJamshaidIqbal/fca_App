import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fca/common/widgets/custom_dropdown.dart';
import 'package:fca/common/widgets/form_bottom_step_counter.dart';
import 'package:fca/common/widgets/form_button.dart';
import 'package:fca/common/widgets/forms_appbar.dart';
import 'package:fca/features/form_profile/demo_graphics_2.dart';

import '../../common/widgets/custom_dateselect.dart';
import '../../common/widgets/custom_textField.dart';
import '../../common/widgets/form_header.dart';

class BasicInformation extends StatefulWidget {
  BasicInformation({super.key});

  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  String sexSelectedValue = "Select",
      phoneSelectedValue = "Home",
      stateSelectedValue = "Select",
      maritalSelectedValue = "Select",
      driverLisenceSelectedValue = "Select";
  String suffixSelectedValue = "Select";
  String? selectedValue;
  String? selectedDate;
  List<String> suffixDropdownItems = [
    "Select",
    'Jr.',
    'Sr.',
    'II',
    'III',
    "IV",
    "V",
    "I"
  ];

  List<String> sexDropdownItems = ["Select", "Male", "Female", "Unknown"];
  List<String> phoneDropdownItems = ["Home", "Mobile", "Work"];

  List<String> stateDropdownItems = ["Select", "Pakistan", "India", "Iran"];
  List<String> maritalDropdownItems = [
    "Select",
    "Annulled",
    "Divorced",
    "Unknown"
  ];
  List<String> driverLisenceDropdownItems = ["Select", "Michegan", "Virgena"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        appBar: buildCustomFormAppBar(leadingCallback: () {}),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormHeader(
                        context: context,
                        title: "Basic Information",
                        stepNo: 1),
                    20.h,
                    RoundedTextField(
                      labelText: "First Name",
                      hintText: "Type first name here...",
                      isOptional: true,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Middle Name ",
                      hintText: "Type middle name here...",
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Last Name",
                      hintText: "Type last name here...",
                      isOptional: true,
                    ),
                    10.h,
                    Row(
                      children: [
                        Expanded(
                          child: RoundedDropdownButton(
                            labelText: "Suffix",
                            items: suffixDropdownItems,
                            value:
                                suffixSelectedValue, // Ensure this value is in the items list
                            onChanged: (value) {
                              setState(() {
                                suffixSelectedValue = value!;
                              });
                            },
                          ),
                        ),
                        15.w,
                        Expanded(
                          child: RoundedDropdownButton(
                            labelText: "Sex",
                            isOptional: true,
                            items: sexDropdownItems,
                            value:
                                sexSelectedValue, // Ensure this value is in the items list
                            onChanged: (value) {
                              setState(() {
                                sexSelectedValue = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    10.h,
                    CustomDateSelectionTextField(
                      labelText: 'Date of Birth',
                      selectedDate: selectedDate,
                      onDateSelected: (date) {
                        setState(() {
                          selectedDate = date;
                        });
                      },
                    ),
                    10.h,
                    const Row(
                      children: [
                        Text(
                          "Primary Phone Number",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          " *",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffB80000),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: DropdownButton<String>(
                              onChanged: (value) {
                                setState(() {
                                  phoneSelectedValue = value!;
                                });
                              },
                              style: TextStyle(
                                color: const Color(0xff5F566B).withOpacity(0.9),
                                fontFamily: 'Poppins',
                              ),
                              items: phoneDropdownItems.map((item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              value: phoneSelectedValue,
                              isExpanded: true,
                              underline:
                                  const SizedBox(), // Remove the underline
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: TextField(
                            // controller: controller,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "(777) 777-7777",
                              hintStyle: TextStyle(
                                color: const Color(0xff5F566B).withOpacity(0.5),
                                fontFamily: 'Poppins',
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(6),
                                      bottomRight: Radius.circular(6)),
                                  borderSide: BorderSide(color: Colors.white)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 192, 189, 195),
                                    width: 1.5),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Email",
                      isOptional: true,
                      hintText: "johnson@sample.com",
                      inputType: TextInputType.emailAddress,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Social Security Number",
                      hintText: "_ _ _-_ _-_ _ _",
                      isOptional: true,
                      inputType: TextInputType.phone,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Address Line 1",
                      hintText: "Type address 1 here ...",
                      isOptional: true,
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Address Line 2",
                      hintText: "Type address 2 here ...",
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "City",
                      hintText: "Type City name here ...",
                      isOptional: true,
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    Row(
                      children: [
                        Expanded(
                          child: RoundedDropdownButton(
                            labelText: "State",
                            items: stateDropdownItems,
                            value:
                                stateSelectedValue, // Ensure this value is in the items list
                            onChanged: (value) {
                              setState(() {
                                stateSelectedValue = value!;
                              });
                            },
                          ),
                        ),
                        10.w,
                        Expanded(
                          child: RoundedTextField(
                            labelText: "Zip",
                            hintText: "Type zip code",
                            inputType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Maiden Last Name",
                      hintText: 'Type maiden last name here ...',
                      isOptional: true,
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Marital Status",

                      items: maritalDropdownItems,
                      value:
                          maritalSelectedValue, // Ensure this value is in the items list
                      onChanged: (value) {
                        setState(() {
                          maritalSelectedValue = value!;
                        });
                      },
                    ),
                    10.h,
                    const Text(
                      "Upload A Photo of Your Driver's License",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    5.h,
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          border: Border.all(
                            color: const Color.fromARGB(255, 192, 189, 195),
                            width: 1.5,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Browse Image (.jpeg, .pdf, .png)",
                              style: TextStyle(
                                color: const Color(0xff5F566B).withOpacity(0.5),
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SvgPicture.asset('assets/icons/upload.svg'),
                          ],
                        ),
                      ),
                    ),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Driver's License State",

                      items: driverLisenceDropdownItems,
                      value:
                          driverLisenceSelectedValue, // Ensure this value is in the items list
                      onChanged: (value) {
                        setState(() {
                          driverLisenceSelectedValue = value!;
                        });
                      },
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Driver's License State #",
                      hintText: '123456789',
                      inputType: TextInputType.text,
                    ),
                    20.h,
                    CustomFormElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Demographics(),
                              ));
                        },
                        buttonText: "Next "),
                    10.h,
                    NumberRow(targetNumber: 1),
                    20.h,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
