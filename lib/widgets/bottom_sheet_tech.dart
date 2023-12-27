// ignore_for_file: library_private_types_in_public_api

import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnicalBottomSheetForm extends StatefulWidget {
  const TechnicalBottomSheetForm({super.key});

  @override
  _TechnicalBottomSheetFormState createState() =>
      _TechnicalBottomSheetFormState();
}

class _TechnicalBottomSheetFormState extends State<TechnicalBottomSheetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstcontrollers1 = TextEditingController();
  final TextEditingController _firstcontrollers2 = TextEditingController();
  final TextEditingController _firstcontrollers3 = TextEditingController();
  final TextEditingController _firstcontrollers4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Add New Request",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers1,
                  hintText: 'Enter order Address here',
                  icon1: Icons.abc,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers2,
                  hintText: 'Enter restaurant sector here',
                  icon1: Icons.abc,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers3,
                  hintText: 'Enter description here',
                  icon1: Icons.abc,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers4,
                  hintText: 'pressed here file',
                  icon1: Icons.file_copy,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 10.h),
                child: SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(BorderSide(
                              color: Color.fromARGB(255, 12, 82, 205))),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 12, 82, 205))),
                      onPressed: () {},
                      child: const Text("Add the ticket",
                          style: TextStyle(color: Colors.white))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
