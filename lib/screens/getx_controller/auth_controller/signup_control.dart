import 'dart:convert';

import 'package:blue_bees/models/auth_models/signup_model.dart';
import 'package:blue_bees/screens/getx_controller/check_boxes/check_box_control.dart';
import 'package:blue_bees/screens/login_screen.dart';
import 'package:blue_bees/services/api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

/* **************************************************************
      Controller for the user registration for an account         
**************************************************************  */

class SignUpConroller extends GetxController {
  void formSubmittionForSignUp(
    BuildContext context,
    final nameControl,
    final phoneControl,
    final emailControl,
    final passwordControl,
    final passwordConfrimControl,
    RxList<CheckBoxesMain> checkBoxesMainList,
    final codeCountry,
  ) async {
    final localStorage = GetStorage();

    if (kDebugMode) {
      print("signup ================ $phoneControl");
    }
    String roleTile = "";
    for (var element in checkBoxesMainList) {
      if (element.value == true) {
        if (element.title == "Service provider") {
          roleTile = "Company";
        } else if (element.title == "Service requester") {
          roleTile = "Client";
        }
      }
    }

    print("countryCode $codeCountry");
    print("remainingNumber $phoneControl");
    String completeNum = "$codeCountry$phoneControl";

    localStorage.write("country_code", codeCountry);
    localStorage.write("phone_number", phoneControl);
    localStorage.save();
    SignUpModel? signUpModel = SignUpModel(
        userName: nameControl,
        phoneNumber: completeNum,
        email: emailControl,
        role: roleTile,
        password: passwordControl);

    try {
      var response = await http.post(Uri.parse(registration),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(signUpModel.toMap()));

      var jsonRespose = jsonDecode(response.body.toString());
      if (kDebugMode) {
        print("============${response.body.toString()}");
        print("============${jsonRespose["responseData"]}");
      }

      if (jsonRespose["statusCode"] == 1) {
        Fluttertoast.showToast(msg: 'Account Created Successfully');
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
      Fluttertoast.showToast(msg: '$e Account is not created yet');
    }
    update();
    roleTile = "";
  }
}

/* **************************************************************
      Controller for the user to update his previous data         
**************************************************************  */

class UpdatedUserController extends GetxController {
  void formSubmittionForUpdateUser() async {
    try {
      var response = await http.post(Uri.parse(updateUser),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(""));

      var jsonRespose = jsonDecode(response.body.toString());
      if (kDebugMode) {
        print("============${response.body.toString()}");
        print("============${jsonRespose["responseData"]}");
      }

      if (jsonRespose["statusCode"] == 1) {
        Fluttertoast.showToast(msg: 'Account update successfully');
        // ignore: use_build_context_synchronously

        if (kDebugMode) {
          print("=========================");
          print(response.body.toString());
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('-------------$e--------------');
      }
      Fluttertoast.showToast(msg: '$e Account is not update yet');
    }
    update();
  }
}

/* **************************************************************
      Controller for the user update his previous password         
**************************************************************  */

class UpdatedPasswordController extends GetxController {
  void formSubmittionForUpdatedPassword() async {
    try {
      var response = await http.post(Uri.parse(updatedPassword),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(""));

      var jsonRespose = jsonDecode(response.body.toString());
      if (kDebugMode) {
        print("============${response.body.toString()}");
        print("============${jsonRespose["responseData"]}");
      }

      if (jsonRespose["statusCode"] == 1) {
        Fluttertoast.showToast(msg: 'password update successfully');
        // ignore: use_build_context_synchronously

        if (kDebugMode) {
          print("=========================");
          print(response.body.toString());
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('-------------$e--------------');
      }
      Fluttertoast.showToast(msg: '$e password is not update yet');
    }
    update();
  }
}
