import 'package:blue_bees/table_view/detailcontailner.dart';
import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:blue_bees/widgets/cardwith_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 55.h),
            const DetailsContainerEveryPage(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: Text(
                "Offers",
                style:
                    TextStyle(fontSize: 25.sp, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 30.h),
            CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
            SizedBox(height: 20.h),
            CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
            SizedBox(height: 20.h),
            CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
            SizedBox(height: 20.h),
            CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
            SizedBox(height: 20.h),
            CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
            SizedBox(height: 20.h),
            CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                  icon: Icon(Icons.arrow_back_outlined,
                      size: 16.sp, color: Colors.white),
                  label: const Text(
                    "Bottom Sheet",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class MyBottomSheetForm extends StatefulWidget {
  const MyBottomSheetForm({super.key});

  @override
  State<MyBottomSheetForm> createState() => _MyBottomSheetFormState();
}

class _MyBottomSheetFormState extends State<MyBottomSheetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstcontrollers1 = TextEditingController();
  final TextEditingController _firstcontrollers2 = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers1,
                  hintText: 'Enter order Address here',
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
                  firstcontrollers: _firstcontrollers2,
                  hintText: 'Enter restaurant sector here',
                  icon1: Icons.abc,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 12, 82, 205))),
                      onPressed: () {},
                      icon: const Icon(Icons.add, color: Colors.white),
                      label: const Text("Add a new request",
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
