// ignore_for_file: library_private_types_in_public_api

import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:blue_bees/widgets/card_offer_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Requests extends StatefulWidget {
  const Requests({super.key});

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 30.h),
              Container(
                margin: const EdgeInsets.all(10),
                alignment: AlignmentDirectional.bottomEnd,
                width: double.infinity.w,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: ElevatedButton.icon(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 12, 82, 205))),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const MyBottomSheetForm();
                            });
                      },
                      icon: const Icon(Icons.add, color: Colors.white),
                      label: const Text("Add a new request",
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              SizedBox(height: 20.h),
              const CardOfOfferDetails(),
              const CardOfOfferDetails(),
              const CardOfOfferDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: ElevatedButton.icon(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 12, 82, 205))),
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new,
                        size: 16.sp, color: Colors.white),
                    label: const Text(
                      "Sending a message",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ]),
      )),
    );
  }
}

class MyBottomSheetForm extends StatefulWidget {
  const MyBottomSheetForm({super.key});

  @override
  _MyBottomSheetFormState createState() => _MyBottomSheetFormState();
}

class _MyBottomSheetFormState extends State<MyBottomSheetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstcontrollers1 = TextEditingController();
  final TextEditingController _firstcontrollers2 = TextEditingController();
  final TextEditingController _firstcontrollers3 = TextEditingController();
  final TextEditingController _firstcontrollers4 = TextEditingController();
  final TextEditingController _firstcontrollers5 = TextEditingController();
  final TextEditingController _firstcontrollers6 = TextEditingController();

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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: Row(children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("First Text",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal)),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("Second Text",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal)),
                      )),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("1. First Text",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("2. Second Text",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold)),
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
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers5,
                  hintText: 'Enter Date time here',
                  icon1: Icons.abc,
                  icon2: Icons.date_range,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers6,
                  hintText: 'Enter name here',
                  icon1: Icons.abc,
                  icon2: Icons.abc,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 05.w, vertical: 10.h),
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
                            child: const Text("to publish",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 05.w, vertical: 10.h),
                      child: SizedBox(
                        height: 50.h,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Preview the order",
                                style: TextStyle(color: Colors.black))),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
