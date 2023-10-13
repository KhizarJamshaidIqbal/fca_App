// import 'package:flutter/material.dart';
// import 'package:patient_portal_mobile_app_flutter/common/colors.dart';
// import 'package:patient_portal_mobile_app_flutter/constants/app_sizer.dart';
// import 'package:patient_portal_mobile_app_flutter/features/auth/screens/auth_screen_main.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../models/onboardingscreen_components.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   int currentPage = 0;
//   PageController _pageController = PageController(initialPage: 0);

//   Future setSeenonboard() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool seenOnboard = await prefs.setBool('seenOnboard', true);
//   }

//   @override
//   void initState() {
//     super.initState();
//     setSeenonboard();
//   }

//   void _navigateToNext() {
//     if (currentPage < onboarding_data.length - 1) {
//       _pageController.nextPage(
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.ease,
//       );
//     } else {
//       // Handle when the user reaches the last page
//     }
//   }

//   void _navigateToBack() {
//     _pageController.previousPage(
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffffffff),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0),
//           child: Column(
//             children: [
//               Expanded(
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: onboarding_data.length,
//                   onPageChanged: (value) {
//                     setState(() {
//                       currentPage = value;
//                     });
//                   },
//                   itemBuilder: (context, index) {
//                     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         5.h,
//                         currentPage > 0
//                             ? Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: IconButton(
//                                     onPressed: () {
//                                       _navigateToBack();
//                                     },
//                                     icon: const Icon(
//                                       Icons.arrow_back_ios_rounded,
//                                       size: 30,
//                                       color: Colors.grey,
//                                     )),
//                               )
//                             : const SizedBox.shrink(),
//                         const Spacer(),
//                         Center(
//                           child: SizedBox(
//                             height: 250,
//                             child: Image(
//                               image: AssetImage(onboarding_data[index].image),
//                             ),
//                           ),
//                         ),
//                         50.h,
//                         Text(
//                           onboarding_data[index].title,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: const Color(0xff1A237E).withOpacity(0.7),
//                             fontSize: 26,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         25.h,
//                         Text(
//                           onboarding_data[index].Description,
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(
//                             color: Color(0xffb6d1f3),
//                             fontSize: 16,
//                           ),
//                         ),
//                         60.h,
//                       ],
//                     );
//                   },
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                   onboarding_data.length,
//                   (index) => AnimatedContainer(
//                     margin: const EdgeInsets.only(right: 5.0),
//                     duration: const Duration(milliseconds: 500),
//                     height: 10,
//                     width: currentPage == index ? 30 : 10,
//                     decoration: BoxDecoration(
//                       color: currentPage == index
//                           ? globalColors.primaryColor
//                           : globalColors.UnSlectedDotsColor,
//                       borderRadius: const BorderRadius.all(Radius.circular(60)),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 35.0,
//               ),
//               SizedBox(
//                 width: MediaQuery.of(context).size.width * .8,
//                 child: currentPage < onboarding_data.length - 1
//                     ? Row(
//                         children: [
//                           TextButton(
//                             onPressed: () {},
//                             child: Padding(
//                               padding: EdgeInsets.all(13.0),
//                               child: Text(
//                                 "Skip",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.grey,
//                                   fontFamily: 'Poppins',
//                                 ),
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.white,
//                               shape: const RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(20)),
//                               ),
//                             ),
//                           ),
//                           const Spacer(),
//                           ElevatedButton(
//                             onPressed: () {
//                               _navigateToNext();
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.all(13.0),
//                               child: Text(
//                                 currentPage < onboarding_data.length - 1
//                                     ? "Next"
//                                     : "Start",
//                                 style: const TextStyle(
//                                   fontSize: 16,
//                                   fontFamily: 'Poppins',
//                                 ),
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: globalColors.primaryColor,
//                               shape: const RoundedRectangleBorder(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(20)),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     : ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => AuthScreenMain(),
//                               ));
//                         },
//                         child: const Padding(
//                           padding: EdgeInsets.all(13.0),
//                           child: Text(
//                             "Start",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontFamily: 'Poppins',
//                             ),
//                           ),
//                         ),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: globalColors.primaryColor,
//                           shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(20)),
//                           ),
//                         ),
//                       ),
//               ),
//               10.h
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
