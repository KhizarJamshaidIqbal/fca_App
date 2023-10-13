import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:fca/common/widgets/custom_dropdown.dart';
import '../../common/widgets/form_bottom_step_counter.dart';
import '../../common/widgets/form_button.dart';
import '../../common/widgets/form_header.dart';
import '../../common/widgets/forms_appbar.dart';

class AdditionalInformation extends StatefulWidget {
  AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool declineToSpecify = false;

  String whereDidyouHearSelectedValue = "Select";

  // Question 1 options
  List<String> whereDidyouHearDropdownItems = [
    "Select",
    "Attorney",
    "Brochure",
    "Case Manager",
    "Chiropractor",
    "Emergency Room",
    "Friend /Family",
    "Insurance",
    "Nurse",
    "Online Ad",
    "Other Source #1",
    "Other Source #2",
    "Other Source #3",
    "Other Source #4",
    "Other Source #5",
    "Patient Seminar",
    "Physical Therapist",
    "Physician",
    "Physician's Assistant",
    "Previous Patient",
    "Print Ad",
    "Radio Ad",
    "Search Engine",
    "Website",
    "Workers Comp",
    "Yellow Pages"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildCustomFormAppBar(leadingCallback: () {}),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: FormHeader(
                        context: context,
                        title: "Additional Information",
                        stepNo: 5),
                  ),
                  20.h,
                  const Row(
                    children: [
                      Text(
                        "Preferred Pharmacies",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  5.h,
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "ADD PHARMACIES",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFE2E3E8)),
                    ),
                  ),
                  const Divider(thickness: 1.5),
                  10.h,
                  RoundedDropdownButton(
                    labelText: "How did you hear about us?",
                    items: whereDidyouHearDropdownItems,
                    value:
                        whereDidyouHearSelectedValue, // Ensure this value is in the items list
                    onChanged: (value) {
                      setState(() {
                        whereDidyouHearSelectedValue = value!;
                      });
                    },
                  ),
             
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
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
                                          AdditionalInformation(),
                                    ));
                              },
                              buttonText: "Next "),
                        ),
                      ],
                    ),
                  ),
                  10.h,
                  NumberRow(targetNumber: 5),
                  20.h
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
