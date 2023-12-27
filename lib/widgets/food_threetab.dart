import 'package:blue_bees/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ThreeTabScreenFood extends StatefulWidget {
  const ThreeTabScreenFood({super.key});

  @override
  State<ThreeTabScreenFood> createState() => _ThreeTabScreenFoodState();
}

class _ThreeTabScreenFoodState extends State<ThreeTabScreenFood> {
  DateFormat dateTimeFormat = DateFormat('yyyy-mm-dd');
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child:
                  CustomCard(dateTimeFormat: dateTimeFormat, onPressed: () {})),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child:
                  CustomCard(dateTimeFormat: dateTimeFormat, onPressed: () {})),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              child:
                  CustomCard(dateTimeFormat: dateTimeFormat, onPressed: () {})),
        ]),
      ),
    );
  }
}
