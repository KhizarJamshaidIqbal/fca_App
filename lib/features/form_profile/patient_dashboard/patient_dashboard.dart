import 'package:flutter/material.dart';
import '../../auth/services/auth_service.dart';
import '../basic_information_1.dart';

class PatientDashboard extends StatelessWidget {
  const PatientDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 85,
              decoration: BoxDecoration(
                color: const Color(0xffFBF9F8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/logo/logo.jpg",
                              height: 60,
                              width: 60,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Apptify",
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff5C85A2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        PopupMenuButton<String>(
                          child: const Column(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/person.jpg'),
                              ),
                              Text(
                                "Zain Gilani",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'Update Profile',
                              child: ListTile(
                                leading: const Icon(Icons.person),
                                title: const Text('Update Profile'),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BasicInformation(),
                                      ));
                                },
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'logout',
                              child: ListTile(
                                leading: const Icon(Icons.exit_to_app),
                                title: const Text('Logout'),
                                onTap: () async {
                                  final auth = AuthService();
                                  await auth.logout(context);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
