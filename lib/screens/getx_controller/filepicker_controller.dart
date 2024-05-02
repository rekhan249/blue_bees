import 'dart:convert';
import 'dart:io';

import 'package:blue_bees/services/api_services.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FilePickerProvider extends GetxController {
  String _fileLink = "";
  String get fileLink => _fileLink;

  Future<String> filePickerFromGallery(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.single.path != null) {
      File filePath = File(result.files.single.path!);
      _fileLink = filePath.path;
      update();
    } else {
      Get.snackbar("Error", "user not selected any file");
    }
    return _fileLink;
  }
}

class UplodedCommonSinglefile extends GetxController {
  void uplodedCommonlySinglefile() async {
    try {
      var response = await http.post(Uri.parse(uploadSingle),
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
        Fluttertoast.showToast(msg: 'File uploaded successfully');
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
      Fluttertoast.showToast(msg: '$e File does not uploaded yet');
    }
    update();
  }
}
