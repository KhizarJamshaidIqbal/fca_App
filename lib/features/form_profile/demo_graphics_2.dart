import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:fca/common/widgets/custom_dropdown.dart';

import '../../common/widgets/custom_textField.dart';
import '../../common/widgets/form_bottom_step_counter.dart';
import '../../common/widgets/form_button.dart';
import '../../common/widgets/form_header.dart';
import '../../common/widgets/forms_appbar.dart';

class Demographics extends StatefulWidget {
  Demographics({super.key});

  @override
  State<Demographics> createState() => _DemographicsState();
}

class _DemographicsState extends State<Demographics> {
  String? sexOrientationSelectedValue = "Select",
      genderIdentySelectedValue = "Select",
      hispanicSelectedValue = "Select",
      raceSelectedValue = "Select",
      stateSelectedValue = "Select";
  String? selectedValue;
  String? selectedDate;
  List<String> sexOrientationDropdownItems = [
    "Select",
    'Lesbian,gay or homosexual',
    'Straight or homosexual',
    'Bisexual',
    'somethings else,please describe',
    'Dont Know',
    "Choose not to disclose",
  ];

  List<String> genderIdentityDropdownItems = [
    "Select",
    "Male",
    "Female",
    "Female-to-male(FTM)/Transgender Male/Trans Man",
    "Male-to-Female(MTF)/Transgender Female/Trans Woman",
    "Genderqueer,neither exclusively male nor female",
    "Additional gender category or other,please specify",
    "Choose not to disclose"
  ];
  List<String> hispanicDropdownItems = [
    "Select",
    "Yes",
    "No",
    "Decline To Specify"
  ];
  List<String> raceDropdownItems = [
    "Select",
    "American Indian or Alaska Native",
    "Asian",
    "Back or African American",
    "Native Hawaniian or Other Pacific Islander",
    "White",
    "Other Race",
    "Unknown",
    "Decline to specify"
  ];
  bool declineToSpecify = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildCustomFormAppBar(leadingCallback: () {}),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.h,
                FormHeader(context: context, title: "Demographics", stepNo: 2),
                10.h,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RoundedDropdownButton(
                      labelText: "Sexual Orientation",
                      isOptional: true,
                      items: sexOrientationDropdownItems,
                      value:
                          sexOrientationSelectedValue, // Ensure this value is in the items list
                      onChanged: (value) {
                        setState(() {
                          sexOrientationSelectedValue = value;
                        });
                      },
                    ),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Gender Identity",
                      isOptional: true,
                      items: genderIdentityDropdownItems,
                      value:
                          genderIdentySelectedValue, // Ensure this value is in the items list
                      onChanged: (value) {
                        setState(() {
                          genderIdentySelectedValue = value;
                        });
                      },
                    ),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Hispanic or Latino?",
                      isOptional: true,
                      items: hispanicDropdownItems,
                      value: hispanicSelectedValue,
                      onChanged: (value) {
                        setState(() {
                          hispanicSelectedValue = value!;
                        });
                      },
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Ethnicity",
                      hintText: "Type Ethnicity here...",
                      inputType: TextInputType.phone,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: declineToSpecify,
                            onChanged: (value) {
                              setState(() {
                                declineToSpecify = value!;
                              });
                            }),
                        const Text("Decline To Specify")
                      ],
                    ),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Race",
                      isOptional: true,
                      items: raceDropdownItems,
                      value: raceSelectedValue,
                      onChanged: (value) {
                        setState(() {
                          raceSelectedValue = value;
                        });
                      },
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Specific Races",
                      hintText: "Type specfic races here...",
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: declineToSpecify,
                            onChanged: (value) {
                              setState(() {
                                declineToSpecify = value!;
                              });
                            }),
                        const Text("Decline To Specify")
                      ],
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Languages",
                      hintText: "Type your languages here...",
                      isOptional: true,
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 48,
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Back",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        ),
                        10.w,
                        Expanded(
                          child: CustomFormElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Demographics(),
                                    ));
                              },
                              buttonText: "Next "),
                        ),
                      ],
                    ),
                    10.h,
                    NumberRow(targetNumber: 2),
                    20.h
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
