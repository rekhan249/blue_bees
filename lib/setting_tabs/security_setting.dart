import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
  final TextEditingController _namecontrollers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormSingleIcon(
                firstcontrollers: _namecontrollers,
                hintText: 'Enter current password here',
                icon1: Icons.abc),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormSingleIcon(
                firstcontrollers: _namecontrollers,
                hintText: 'Enter new password here',
                icon1: Icons.abc),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormSingleIcon(
                firstcontrollers: _namecontrollers,
                hintText: 'Enter confirm password here',
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
                  child: const Text("Update password",
                      style: TextStyle(color: Colors.white))),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    ));
  }
}
