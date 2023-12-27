import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentSetting extends StatefulWidget {
  const PaymentSetting({super.key});

  @override
  State<PaymentSetting> createState() => _PaymentSettingState();
}

class _PaymentSettingState extends State<PaymentSetting> {
  final TextEditingController _namecontrollers = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Payment setting',
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Card added previously',
                  style: TextStyle(fontSize: 15.sp)),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                  elevation: 5,
                  child: Container(
                      height: 80.h,
                      width: double.infinity,
                      color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  elevation: 5,
                  child: Container(
                      height: 80.h,
                      width: double.infinity,
                      color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormSingleIcon(
                  firstcontrollers: _namecontrollers,
                  hintText: 'Enter card number here',
                  icon1: Icons.abc),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Release Date', style: TextStyle(fontSize: 15.sp)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(child: Text('Month')),
                  ],
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.5.w)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.5.w)),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none)),
                  onChanged: (value) {}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(child: Text(' the Year')),
                  ],
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.r),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.5.w)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.5.w)),
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none)),
                  onChanged: (value) {}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text('CVV serail number', style: TextStyle(fontSize: 15.sp)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormSingleIcon(
                  firstcontrollers: _namecontrollers,
                  hintText: 'Enter serial number here',
                  icon1: Icons.abc),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              alignment: AlignmentDirectional.bottomEnd,
              width: double.infinity.w,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 12, 82, 205))),
                    onPressed: () {},
                    child: const Text("Add payment card",
                        style: TextStyle(color: Colors.white))),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
