import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  final TextEditingController _namecontrollers = TextEditingController();
  bool isServiceRequest = false;
  bool isServiceProvider = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter name here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter email here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter contact here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(child: Text('Riaz')),
                    ],
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 10.w),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.r),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.w)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.w)),
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none)),
                    onChanged: (value) {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter address here',
                    icon1: Icons.abc),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text('Service requester',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color:
                                      const Color.fromARGB(255, 12, 82, 205))),
                          Checkbox(
                              shape: const CircleBorder(),
                              activeColor:
                                  const Color.fromARGB(255, 12, 82, 205),
                              value: isServiceRequest,
                              onChanged: (value) {
                                isServiceRequest = value!;
                                setState(() {});
                              }),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text('Service requester',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color:
                                      const Color.fromARGB(255, 12, 82, 205))),
                          Checkbox(
                              shape: const CircleBorder(),
                              activeColor:
                                  const Color.fromARGB(255, 12, 82, 205),
                              value: isServiceProvider,
                              onChanged: (value) {
                                isServiceProvider = value!;
                                setState(() {});
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
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
                      child: const Text("Update your account information",
                          style: TextStyle(color: Colors.white))),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ));
  }
}
