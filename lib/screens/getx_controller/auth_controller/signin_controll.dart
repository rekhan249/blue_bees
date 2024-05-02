import 'dart:convert';
import 'package:blue_bees/models/auth_models/signup_model.dart';
import 'package:blue_bees/models/auth_models/user_model.dart';
import 'package:blue_bees/screens/home_screen.dart';
import 'package:blue_bees/services/api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/* **************************************************************
      Controller for the user login into his account         
************************************************************** */

class SignInController extends GetxController {
  void formSubmittionForSignIn(
      BuildContext context, final phoneControl, final countryCode) async {
    String completeNumber = "$countryCode$phoneControl";
    if (kDebugMode) {
      print("SingIn ================= $completeNumber");
    }

    if (phoneControl == "") {
      Fluttertoast.showToast(msg: "Firstly enter phone number please");
    }

    SignInModel signInModel = SignInModel(phoneNumber: completeNumber);

    try {
      List<User>? user = [];
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
        print("============${jsonRespose["responseData"]["user"]}}");
      }
      if (jsonRespose["statusCode"] == 1) {
        String? userId = jsonRespose["responseData"]["user"]["_id"];
        String? token = jsonRespose["responseData"]["jwToken"];
        User userInstance = User.fromJson(jsonRespose["responseData"]["user"]);
        user.add(userInstance);
        await preferences.setString("userId", userId!);
        await preferences.setString("token", token!);
        Fluttertoast.showToast(msg: 'Account Login Successfully');
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyHomePage()));
        // if (kDebugMode) {
        //   print("=========================");
        //   print(response.body.toString());
        // }
      }
    } catch (e) {
      if (kDebugMode) {
        print('-------------$e--------------');
      }

      Fluttertoast.showToast(msg: 'Account is not Login yet');
    }

    update();
  }

  // Map<String, dynamic>? getSavedLoginDetails() {
  //   final storage = GetStorage();
  //   final rememberMe = storage.read('remember_me') ?? false;

  //   if (rememberMe.toString().isBool) {
  //     final phoneNumber = storage.read('phone_number');
  //     return {
  //       'phoneNumber': phoneNumber,
  //       'rememberMe': rememberMe,
  //     };
  //   }
  //   return null;
  // }
}

/* **************************************************************
      Controller for the user login remember         
**************************************************************  */

class IsRemembered extends GetxController {
  final deviceStorage = GetStorage();
  final RxBool _isRemembered = false.obs;
  @override
  void onInit() {
    _isRemembered.value = deviceStorage.read("remember_me") ?? false;

    super.onInit();
  }

  RxBool get isRemembered => _isRemembered;

  void rememberMe(bool? value) {
    _isRemembered.value = value!;
    deviceStorage.write("remember_me", value);
    update();
  }
}

/* **************************************************************
      Controller for the user logout from his account         
**************************************************************  */

class SignOutController extends GetxController {
  void submittionSignOut() async {
    try {
      var response = await http.post(Uri.parse(logout),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(""));

      var jsonRespose = jsonDecode(response.body.toString());

      if (kDebugMode) {
        print("============${jsonRespose["responseData"]}}");
      }
      if (jsonRespose["statusCode"] == 1) {
        Fluttertoast.showToast(msg: 'user logout successfully');
        // ignore: use_build_context_synchronously
      }
    } catch (e) {
      if (kDebugMode) {
        print('-------------$e--------------');
      }

      Fluttertoast.showToast(msg: 'user is not logout yet something wrong');
    }

    update();
  }
}

/* **************************************************************
      Controller for the Admin user login into his account         
**************************************************************  */

class AdminSignInController extends GetxController {
  void formSubmittionForAdminSignIn() async {
    try {
      var response = await http.post(Uri.parse(adminUser),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          body: json.encode(""));

      var jsonRespose = jsonDecode(response.body.toString());

      if (kDebugMode) {
        print("============${jsonRespose["responseData"]}}");
      }
      if (jsonRespose["statusCode"] == 1) {
        Fluttertoast.showToast(msg: 'Admin Login Successfully');
        // ignore: use_build_context_synchronously
      }
    } catch (e) {
      if (kDebugMode) {
        print('-------------$e--------------');
      }

      Fluttertoast.showToast(msg: 'Admin is not Login yet');
    }

    update();
  }
}
