// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:fca/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../screens/Dashboard/HomeScreen2.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int _currentindex = 0;

  var ScreenList = [
    HomeScreen2(),
    Center(
      child: Text('History'),
    ),
    Center(
      child: Text('Payments'),
    ),
    Center(
      child: Text('Messages'),
    ),
    Center(
      child: Text('More'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globalColors.BackgroundColor,
      body: ScreenList[_currentindex],
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: Theme(
          data: ThemeData(
            canvasColor: globalColors.WhiteColor,
          ),
          child: BottomNavigationBar(
            backgroundColor: globalColors.WhiteColor,
            selectedItemColor: globalColors.primaryColor,
            unselectedItemColor: globalColors.GreyColor,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: _currentindex == 0
                    ? Image.asset('assets/images/SelectedHome.png')
                    : Image.asset('assets/images/UnSelectedHome.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 1
                    ? Image.asset('assets/images/SelectedAppointments.png')
                    : Image.asset('assets/images/UnSelectedAppointments.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 2
                    ? Image.asset('assets/images/SelectedAmount.png')
                    : Image.asset('assets/images/UnSelectedAmount.png'),
                label: 'Payments',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 3
                    ? Image.asset('assets/images/SelectedMessages.png')
                    : Image.asset('assets/images/UnSelectedMessages.png'),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 4
                    ? Image.asset('assets/images/SelectedMore.png')
                    : Image.asset('assets/images/UnSelectedMore.png'),
                label: 'Profile',
              ),
            ],
            currentIndex: _currentindex,
            onTap: (value) {
              setState(() {
                _currentindex = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
