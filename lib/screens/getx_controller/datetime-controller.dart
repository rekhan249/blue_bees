// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateTimeProvider extends GetxController {
  DateTime selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat("yyyy-mm-dd");
  final firstDate = DateTime(1980);
  final lastDate = DateTime(2050);
  dateTimePicker(BuildContext context) async {
    DateTime? timeDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: firstDate,
        lastDate: lastDate);
    if (timeDate != null) {
      selectedDate = timeDate;
      return selectedDate.toString();
    }
    update();
  }
}
