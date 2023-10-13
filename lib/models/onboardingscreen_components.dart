// ignore_for_file: non_constant_identifier_names

class OnBoarding {
  final String title;
  final String Description;
  final String image;

  OnBoarding({
    required this.title,
    required this.Description,
    required this.image,
  });
}

List<OnBoarding> onboarding_data = [
  OnBoarding(
    title: 'Consult only with a doctor you trust',
    image: "assets/covid-bg.png",
    Description:
        "Easily find and schedule appointments with\ntrusted doctors near you.",
  ),
  OnBoarding(
    title: 'Find a lot of specialist doctors in one place',
    image: "assets/vector-doc2.jpg",
    Description:
        "Book appointments with your preferred doctors\nand manage your health schedule.",
  ),
  OnBoarding(
    title: 'Get connect our Online Consultation',
    image: "assets/appointment.jpg",
    Description:
        "Receive notifications and stay updated\nabout your upcoming appointments.",
  ),
];
