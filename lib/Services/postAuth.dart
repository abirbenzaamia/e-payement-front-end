import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

//import 'dart:io';

//import 'package:mpay/Services/login.dart';

final API = "https://mpay-backend.teletic.dz/oauth2_authorization/oauth/token";

class LogPost {
  LogPost();

  factory LogPost.fromJson(Map<String, dynamic> json) {
    return LogPost();
  }
}

final String AUTH_BASIC = "Basic cGF5ZW1lbnQ6c2VjcmV0";

Future<int> postAuth(String mUserName, mPassword, deviceId) async {
  final response = await http.post(
    Uri.parse(API),
    headers: <String, String>{
      "authorization": AUTH_BASIC,
      "Content-Type": "application/json",
      //"Content-Type": "application/x-www-form-urlencoded"
    },
    body: json.encode(
      <String, String>{
        "username": mUserName,
        "password": mPassword,
        "device": deviceId,
        "client_id": "payement",
        "grant_type": "teletic",
      },
    ),
  );
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200) {
    print('getting access token');

    return response.statusCode;
  } else {
    // If the server did not return a 200 CREATED response,
    // then throw an exception.
    throw Exception('Failed to get access token.');
  }
}
