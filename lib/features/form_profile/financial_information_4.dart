import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:fca/features/form_profile/additional_information_5.dart';
import '../../common/widgets/form_bottom_step_counter.dart';
import '../../common/widgets/form_button.dart';
import '../../common/widgets/form_header.dart';
import '../../common/widgets/forms_appbar.dart';

class FinancialInformation extends StatefulWidget {
  FinancialInformation({super.key});

  @override
  State<FinancialInformation> createState() => _FinancialInformationState();
}

class _FinancialInformationState extends State<FinancialInformation> {
  bool declineToSpecify = false;

  int selectedAnswer1 = -1;
  int selectedAnswer2 = -1;

  // Question 1 options
  List<String> question1Options = [
    "MySelf",
    "Same as emergency contact",
    "Other"
  ];
  List<String> question2Options = ["Selfpay", "Insurance"];

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
                        title: "Responsible Party",
                        stepNo: 4),
                    const ListTile(
                      title:
                          Text("Who will be financially responsible for you?"),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Column(
                      children: question1Options.map((option) {
                        int index = question1Options.indexOf(option);
                        return RadioListTile(
                          title: Text(option),
                          value: index,
                          groupValue: selectedAnswer1,
                          onChanged: (value) {
                            setState(() {
                              selectedAnswer1 = value!;
                            });
                          },
                        );
                      }).toList(),
                    ),
                    const ListTile(
                      title: Text("What will be your methord of payment?"),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Column(
                      children: question2Options.map((option) {
                        int index = question2Options.indexOf(option);
                        return RadioListTile(
                          title: Text(option),
                          value: index,
                          groupValue: selectedAnswer2,
                          onChanged: (value) {
                            setState(() {
                              selectedAnswer2 = value!;
                            });
                          },
                        );
                      }).toList(),
                    ),
                    20.h,
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
                                          AdditionalInformation(),
                                    ));
                              },
                              buttonText: "Next "),
                        ),
                      ],
                    ),
                    10.h,
                    NumberRow(targetNumber: 4),
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
