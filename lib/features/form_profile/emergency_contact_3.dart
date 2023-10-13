import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:fca/common/widgets/custom_dropdown.dart';
import 'package:fca/features/form_profile/financial_information_4.dart';
import '../../common/widgets/custom_textField.dart';
import '../../common/widgets/form_bottom_step_counter.dart';
import '../../common/widgets/form_button.dart';
import '../../common/widgets/form_header.dart';
import '../../common/widgets/forms_appbar.dart';

class EmergencyContact extends StatefulWidget {
  EmergencyContact({super.key});

  @override
  State<EmergencyContact> createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
  String? relationshipToContactSelectedValue = 'Select',
      phoneSelectedValue = 'Home',
      hispanicSelectedValue,
      raceSelectedValue,
      stateSelectedValue = 'Select';
  String? selectedValue;
  String? selectedDate;
  List<String> relationshipToContactDropdownItems = [
    "Select",
    'Spouse',
    'CareGiver',
    'Foster Child',
    'GrandChild',
    'Guardian',
    "Grandparent",
    "Sibling",
    "Child",
    "Other",
    "Parent"
  ];
  List<String> phoneDropdownItems = ["Home", "Mobile", "Work"];
  List<String> stateDropdownItems = [
    'Select',
    "Alabama",
    "Alaska",
    "Arizona",
    "Arkansas",
    "California",
    "Colorado",
    "Connecticut",
    "Delaware",
    "Florida",
    "Georgia",
    "Hawaii",
    "Idaho",
    "Illinois",
    "Indiana",
    "Iowa",
    "Kansas",
    "Kentucky",
    "Louisiana",
    "Maine",
    "Maryland",
    "Massachusetts",
    "Michigan",
    "Minnesota",
    "Mississippi",
    "Missouri",
    "Montana",
    "Nebraska",
    "Nevada",
    "New Hampshire",
    "New Jersey",
    "New Mexico",
    "New York",
    "North Carolina",
    "North Dakota",
    "Ohio",
    "Oklahoma",
    "Oregon",
    "Pennsylvania",
    "Rhode Island",
    "South Carolina",
    "South Dakota",
    "Tennessee",
    "Texas",
    "Utah",
    "Vermont",
    "Virginia",
    "Washington",
    "West Virginia",
    "Wisconsin",
    "Wyoming",
  ];

  bool declineToSpecify = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                        title: "Emergency Contact",
                        stepNo: 3),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Relationship to Contact",
                      isOptional: true,
                      items: relationshipToContactDropdownItems,
                      value:
                          relationshipToContactSelectedValue, // Ensure this value is in the items list
                      onChanged: (value) {
                        setState(() {
                          relationshipToContactSelectedValue = value;
                        });
                      },
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "First Name",
                      hintText: "Type first name here ..",
                      isOptional: true,
                      inputType: TextInputType.phone,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Middle Name ",
                      hintText: 'Type middle name here ...',
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Last Name ",
                      hintText: 'Type last name here ...',
                      isOptional: true,
                    ),
                    10.h,
                    RoundedDropdownButton(
                      labelText: "Primary Phone Type",
                      items: phoneDropdownItems,
                      value:
                          phoneSelectedValue, // Ensure this value is in the items list
                      onChanged: (value) {
                        setState(() {
                          phoneSelectedValue = value;
                        });
                      },
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Phone Number ",
                      isOptional: true,
                      hintText: 'Type phone number here ...',
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Email ",
                      hintText: 'Type email address here ...',
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Address Line 1",
                      hintText: 'Type address line 1 here ...',
                      isOptional: true,
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "Address Line 2",
                      hintText: 'Type address line 2 here ...',
                      inputType: TextInputType.text,
                    ),
                    10.h,
                    RoundedTextField(
                      labelText: "City",
                      hintText: 'Type city here ...',
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
                                stateSelectedValue = value;
                              });
                            },
                          ),
                        ),
                        10.w,
                        Expanded(
                          child: RoundedTextField(
                            labelText: "Zip",
                            hintText: 'Type Zip code here ...',
                            isOptional: true,
                            inputType: TextInputType.text,
                          ),
                        ),
                      ],
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
                                      builder: (context) =>
                                          FinancialInformation(),
                                    ));
                              },
                              buttonText: "Next "),
                        ),
                      ],
                    ),
                    10.h,
                    NumberRow(targetNumber: 3),
                    20.h
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
