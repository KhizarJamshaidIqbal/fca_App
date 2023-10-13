import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:fca/features/form_profile/medications&Allergies_7.dart';

import '../../common/widgets/custom_appbar_with_loading.dart';
import '../../common/widgets/custom_textField.dart';

class FamilyHistory extends StatefulWidget {
  FamilyHistory({super.key});

  @override
  State<FamilyHistory> createState() => _FamilyHistoryState();
}

class _FamilyHistoryState extends State<FamilyHistory> {
  bool declineToSpecify = false;

  String? whereDidyouHearSelectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarLoading(
                  onBackArrowPressed: () {}, progressValue: 0.25, stepNo: 7),
              10.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Family History",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    10.h,
                    const Text(
                      "Indicate the relationship to the family member (e.g. mother, grandfather, half-brother)",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const Divider(),
                    RoundedTextField(
                      labelText: "Family Member",
                    ),
                    10.h,
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Diseases",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            5.h,
                            TextField(
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: "e.g Diabetes,hypertension",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 16.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Health Status",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            5.h,
                          ],
                        )
                      ],
                    ),
                    10.h,
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Back"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFDDDEE2)),
                          ),
                        ),
                        20.w,
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MedicationsAllergies(),
                                ));
                          },
                          child: const Text("Next"),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF5B85A1)),
                          ),
                        ),
                      ],
                    ),
                    100.h,
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
