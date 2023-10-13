import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:fca/features/form_profile/medications&Allergies_7.dart';

import '../../common/widgets/custom_appbar_with_loading.dart';

class PastMedicalHistory extends StatefulWidget {
  PastMedicalHistory({super.key});

  @override
  State<PastMedicalHistory> createState() => _PastMedicalHistoryState();
}

class _PastMedicalHistoryState extends State<PastMedicalHistory> {
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
                      "Past Medical History",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    const Divider(),
                    const Text(
                      "Are you currently taking any medication? (If you’re taking herbal supplements, vitamins, or over-the-counter medications, please list them as well.)",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 16),
                    ),
                    10.h,
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "e.g.lbuprofen 200mg-2x/day",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                    ),
                    10.h,
                    const Text(
                      "Do you have any allergies? Please list the allergic reaction (e.g. coughing, swelling, etc.)",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(fontSize: 16),
                    ),
                    10.h,
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "e.g.Peanuts,shellfish, etc",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
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
