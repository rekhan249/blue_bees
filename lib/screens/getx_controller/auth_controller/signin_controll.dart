import 'dart:convert';

import 'package:blue_bees/models/auth_models/signup_model.dart';
import 'package:blue_bees/screens/login_screen.dart';
import 'package:blue_bees/services/api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignInController extends GetxController {
  void formSubmittionForSignIn(BuildContext context, final phoneControl) async {
    if (kDebugMode) {
      print("object$phoneControl");
    }

    SignInModel signInModel = SignInModel(phoneNumber: phoneControl);

    try {
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();
      var response = await http.post(Uri.parse(login),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(signInModel.toMap()));

      var jsonRespose = jsonDecode(response.body.toString());
      if (kDebugMode) {
        print("============${jsonRespose["responseData"]["user"]["_id"]}}");
      }
      if (jsonRespose["statusCode"] == 1) {
        String? userId = jsonRespose["responseData"]["user"]["_id"];
        print(userId);
        await preferences.setString("userId", userId!);
        Fluttertoast.showToast(msg: 'Account Login Successfully');
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
        if (kDebugMode) {
          print("=========================");
          print(response.body.toString());
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('-------------$e--------------');
      }
      Fluttertoast.showToast(msg: '$e Account is not Login yet');
    }

    update();
  }
}

class IsRemembered extends GetxController {
  final RxBool _isRemembered = false.obs;

  RxBool get isRemembered => _isRemembered;

  void rememberMe(bool? value) {
    _isRemembered.value = value!;
    update();
  }
}
