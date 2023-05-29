import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

final API =
    "http://mpay-backend.teletic.dz/oauth2_resource/signup/confirmation";

class SignUpConfirmation {
  SignUpConfirmation();

  factory SignUpConfirmation.fromJson(Map<String, dynamic> json) {
    return SignUpConfirmation();
  }
}

Future<int> postSignUpConfirmation(username, code) async {
  final response = await http.post(
    Uri.parse(API),
    headers: <String, String>{
      "accept": "*/*",
      "Content-Type": "application/json"
    },
    body: json.encode(
        <String, String>{"username": username, "code": code, "file": ""}),
  );
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200) {
    print('Sign up with success');
    return response.statusCode;
  } else {
    // If the server did not return a 200 CREATED response,
    // then throw an exception.
    throw Exception('Failed to confirm.');
  }
}
