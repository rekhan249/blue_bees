import 'dart:convert';
import 'dart:developer';

import 'package:blue_bees/models/auth_models/getall_users_model.dart';
import 'package:blue_bees/services/api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class UserControllerGetsAll {
  Future<List<ResponseData>> userGetsAll() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    String? token = preferences.getString('token');

    List<ResponseData> userGetsAll = [];
    try {
      var url = Uri.parse(getAllusers);
      var response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $token',
          "Content-Type": "application/json",
          "Accept": 'application/json',
        },
      );

      var jsonRespose = json.decode(response.body);
      if (kDebugMode) {
        print(jsonRespose['data']);
      }

      if (response.statusCode == 1) {
        ResponseData responseUsers =
            ResponseData.fromJson(jsonRespose["responseData"]);
        userGetsAll.add(responseUsers);
      }
    } catch (e) {
      log(e.toString());
    }

    return userGetsAll;
  }
}
