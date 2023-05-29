import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:mpay/api/api_response.dart';

final API = "https://mpay-backend.teletic.dz/oauth2_resource/signup";

class SignUpPost {
  SignUpPost();

  factory SignUpPost.fromJson(Map<String, dynamic> json) {
    return SignUpPost();
  }
}

APIResponse apiresp = APIResponse();
Future<int> postSignUp(String firstName, lastName, username, password,
    phoneNumber, wilaya, address, commune, question, answer) async {
  final response = await http.post(
    Uri.parse(API),
    headers: <String, String>{
      "accept": "application/json",
      "Content-Type": "application/json"
    },
    body: json.encode(
      <String, String>{
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "password": password,
        "phoneNumber": phoneNumber,
        "wilaya": wilaya,
        "commune": commune,
        "address": address,
        "question": question,
        "answer": answer
      },
    ),
  );
  //print('test');
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200) {
    print('Sign up with success');

    apiresp.error = false;
    return (response.statusCode);
  } else {
    apiresp.error = true;
    final Map parsed = json.decode(response.body);
    print(parsed['error']);
    apiresp.errorMessage = parsed['error'];
    // If the server did not return a 200 CREATED response,
    // then throw an exception.
    print("Failed to sign up.");
    //throw Exception('Failed to sign up.');
    return (response.statusCode);
  }
}
