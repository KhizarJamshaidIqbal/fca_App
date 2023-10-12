// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:fca/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../screens/Dashboard/HomeScreen.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int _currentindex = 0;

  var ScreenList = [
    HomeScreen(),
    Center(
      child: Text('Appointments'),
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
                    ? SvgPicture.asset('assets/images/SelectedHome.svg')
                    : SvgPicture.asset('assets/images/UnSelectedHome.svg'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 1
                    ? SvgPicture.asset('assets/images/SelectedAppointments.svg')
                    : SvgPicture.asset('assets/images/UnSelectedAppointments.svg'),
                label: 'Appointments',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 2
                    ? SvgPicture.asset('assets/images/SelectedPayments.svg')
                    : SvgPicture.asset('assets/images/UnSelectedPayments.svg'),
                label: 'Payments',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 3
                    ? SvgPicture.asset('assets/images/SelectedMessages.svg')
                    : SvgPicture.asset('assets/images/UnSelectedMessages.svg'),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: _currentindex == 4
                    ? SvgPicture.asset('assets/images/SelectedMore.svg')
                    : SvgPicture.asset('assets/images/UnSelectedMore.svg'),
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
