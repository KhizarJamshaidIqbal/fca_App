// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constants/colors.dart';
import '../../../constants/error_handling.dart';
import '../../../constants/utils.dart';
import '../../../models/userModel.dart';
import '../../form_profile/patient_dashboard/patient_dashboard.dart';

class AuthService {
  // sign up user
  Future<void> signUpUser({
    required BuildContext context,
    required String name,
    required String email,
    required String role,
    required int age,
    required String gender,
    required String address,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      UserProfile user = UserProfile(
          name: name,
          email: email,
          role: role,
          age: age,
          gender: gender,
          password: password,
          passwordConfirmation: passwordConfirmation,
          address: address);
      final jsonBody = jsonEncode(user.toJson());
      http.Response res = await http.post(
        Uri.parse('$uri/register'),
        body: jsonBody,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          // Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString(
              'x-auth-token', jsonDecode(res.body)['data']['token']);
          // Navigator.pushNamedAndRemoveUntil(
          //   context,
          //   BottomBar.routeName,
          //   (route) => false,
          // );
        },
      );
    } catch (e) {
      Utils.errorSnakbar(context, e.toString());
    }
  }

  Future<void> logout(BuildContext context) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final authToken = prefs.getString('x-auth-token');
      if (authToken != null) {
        final Map<String, String> headers = {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $authToken',
        };
        http.Response res = await http.post(
          Uri.parse('$uri/logout'), // Replace with your logout endpoint
          headers: headers,
        );
        print(authToken);
        if (res.statusCode == 200) {
          // If the logout request is successful, remove the token from SharedPreferences
          await prefs.remove('x-auth-token');
          Utils.snackBar("LogOut successfully", context);
          // Navigator.pushNamedAndRemoveUntil(
          //   context,
          //   SignIn.routeName, // Replace with the route for your login screen
          //   (route) => false,
          // );
        } else {
          // Handle the case where the logout request failed
          Utils.errorSnakbar(context, 'Logout request failed');
        }
      } else {
        Utils.errorSnakbar(context, 'No authentication token found.');
      }
    } catch (e) {
      Utils.errorSnakbar(context, 'Error during logout: $e');
    }
  }

  // sign in user
  Future<void> signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      final Map<String, dynamic> requestBody = {
        'email': email,
        'password': password,
      };
      final jsonBody = jsonEncode(requestBody);
      http.Response res = await http.post(
        Uri.parse('$uri/login'),
        body: jsonBody,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          // Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString(
              'x-auth-token', jsonDecode(res.body)['data']['token']);
          // Navigator.pushNamedAndRemoveUntil(
          //   context,
          //   BottomBar.routeName,
          //   (route) => false,
          // );
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => PatientDashboard(),
            ),
            (route) => false,
          );
        },
      );
    } catch (e) {
      Utils.errorSnakbar(context, e.toString());
    }
  }
}
