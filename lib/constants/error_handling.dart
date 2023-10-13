import 'dart:convert';
import 'package:fca/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      Utils.errorSnakbar(context, jsonDecode(response.body)['message']);
      break;
    case 500:
      Utils.errorSnakbar(context, jsonDecode(response.body)['error']);
      break;
    default:
      Utils.errorSnakbar(context, response.body);
  }
}
