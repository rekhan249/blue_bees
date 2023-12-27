import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestSetting extends StatefulWidget {
  const InterestSetting({super.key});

  @override
  State<InterestSetting> createState() => _InterestSettingState();
}

class _InterestSettingState extends State<InterestSetting> {
  final TextEditingController _namecontrollers = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text('Favorite Place', style: TextStyle(fontSize: 15.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter favorite place here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text('Favorite sector', style: TextStyle(fontSize: 15.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter favorite sector here',
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
                      child: const Text("Save interests",
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
