import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

import 'dart:io';

final API = "https://mpay-backend.teletic.dz/oauth2_authorization/oauth/token";

class LogPost {
  LogPost();

  factory LogPost.fromJson(Map<String, dynamic> json) {
    return LogPost();
  }
}

final String AUTH_BASIC = "Basic cGF5ZW1lbnQ6c2VjcmV0";

Future<int> putLogin(String mUserName, mPassword) async {
  final response = await http.post(
    Uri.parse(API),
    headers: <String, String>{
      HttpHeaders.authorizationHeader: "Basic cGF5ZW1lbnQ6c2VjcmV0",
    },
    body: json.encode(
      <String, String>{
        "username": mUserName,
        "password": mPassword,
        "device": "jbckjezbk4567",
        "client_id": "payement",
        "grant_type": "teletic",
      },
    ),
  );
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200) {
    print('log in with success');

    return response.statusCode;
  } else {
    // If the server did not return a 200 CREATED response,
    // then throw an exception.
    throw Exception('Failed to log in.');
  }
}
