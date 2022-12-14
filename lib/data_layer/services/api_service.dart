import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:provider_part1_counter/data_layer/models/user_data.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as https;

class ApiService {
  static Future<UserData> getUserData() async {
    try {
      Response response =
          await https.get(Uri.parse("https://api.agify.io/?name=bella"));
      if (response.statusCode == 200) {
        UserData userData = UserData.fromJson(jsonDecode(response.body));
        debugPrint(userData.name);
        return userData;
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }
}
