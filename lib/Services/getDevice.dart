import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';

final API = "http://mpay-backend.teletic.dz/oauth2_resource/user/devices";

class GetDevice {
  GetDevice();

  factory GetDevice.fromJson(Map<String, dynamic> json) {
    return GetDevice();
  }
}

Future<int> getDevice() async {
  final response = await http.get(
    Uri.parse(API),
    headers: <String, String>{"accept": "*/*"},
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
