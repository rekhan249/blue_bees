import 'dart:convert';
import 'dart:developer';

import 'package:blue_bees/models/blog_modells/get_single.dart';
import 'package:blue_bees/models/blog_modells/getall_blogs.dart';
import 'package:blue_bees/services/api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class GetAllBlogsFromApi {
  Future<List<AllBlog>> getsAllBlog() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    String? token = preferences.getString('token');

    List<AllBlog>? allBlogDataList = [];
    try {
      var url = Uri.parse(getAllBlogs);
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

      if (response.statusCode == 200) {
        ResponseData responseData =
            ResponseData.fromJson(jsonRespose["responseData"]);

        allBlogDataList.addAll(responseData.allBlogs);
      }
    } catch (e) {
      log(e.toString());
    }
    return allBlogDataList;
  }
}

/* ========================================
       Get single blog by using blog id
   ======================================== */

class GetSingleBlogById {
  Future<List<ResponseDataValue>> getSingleBlog(String? blogId) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    String? token = preferences.getString('token');

    List<ResponseDataValue>? allBlogDataList = [];
    String concateId = "$getBlogById$blogId";

    try {
      var url = Uri.parse(concateId);
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

      if (response.statusCode == 200) {
        ResponseDataValue responseData =
            ResponseDataValue.fromJson(jsonRespose["responseData"]);
        allBlogDataList.add(responseData);
      }
    } catch (e) {
      log(e.toString());
    }
    return allBlogDataList;
  }
}
