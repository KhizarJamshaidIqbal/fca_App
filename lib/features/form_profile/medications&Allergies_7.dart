import 'package:fca/constants/app_size.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_appbar_with_loading.dart';

class MedicationsAllergies extends StatefulWidget {
  MedicationsAllergies({super.key});

  @override
  State<MedicationsAllergies> createState() => _MedicationsAllergiesState();
}

class _MedicationsAllergiesState extends State<MedicationsAllergies> {
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
                  onBackArrowPressed: () {}, progressValue: 0.35, stepNo: 7),
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
                      "Please check all that apply:",
                      style: TextStyle(fontSize: 16),
                    ),
                    10.h,
                    const Text(
                      "Head",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Trauma",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    10.h,
                    const Text(
                      "Eyes",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Blindness",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Cataracts",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Glaucoma",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Wears glasses/ contacts",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    10.h,
                    const Text(
                      "Ears",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Hearing aids",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Nose/Sinuses",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Allergic Rhinitis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Sinus Infections",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Nose/Sinuses",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Allergic Rhinitis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Mouth/Throat/Teeth",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Dentures",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Cardiovascular",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Aneurysm",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Angina",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "DVT",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Dysrhythmia",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "HTN",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Murmur",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Myocardial infarction",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Other heart disease",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Respiratory",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Asthma",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Bronchitis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "COPD - Bronchitis/Emphysema",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Pleuritis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Pneumonia",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Genitourinary",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Hernia",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Incontinence",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Nephrolithiasis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Other kidney disease",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "STDs",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "UTI(s)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Endocrine",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Goiter",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Hyperlipidemia",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Hypothyroidism",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Thyroid disease",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Thyroiditis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Type 1 DM",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Type 2 DM",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Heme/Onc",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Anemia",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Cancer",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Infectious",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "HIV",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "STDs",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Tuberculosis (dz)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Tuberculosis (exposure)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Musculoskeletal",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Arthritis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Gout",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "M/S injury",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Skin",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Dermatitis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Mole(s)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Other skin condition(s)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Psoriasis",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Neurological",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Epilepsy",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Seizures",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Severe headaches, migraines",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Stroke",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "TIA",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Psychiatric",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Bipolar disorder",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Depression",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Hallucinations, delusions",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Suicidal ideation",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        const Text(
                          "Suicide attempts",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "Any other comments",
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
