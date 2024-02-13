import 'package:blue_bees/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TheCarThreeTabs extends StatefulWidget {
  const TheCarThreeTabs({super.key});

  @override
  State<TheCarThreeTabs> createState() => _TheCarThreeTabsState();
}

class _TheCarThreeTabsState extends State<TheCarThreeTabs> {
  DateFormat dateTimeFormat = DateFormat('yyyy-mm-dd');
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child:
                  CustomCard(dateTimeFormat: dateTimeFormat, onPressed: () {})),
        ]);
  }
}
