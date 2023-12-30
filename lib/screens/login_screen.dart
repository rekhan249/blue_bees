import 'package:awesome_icons/awesome_icons.dart';
import 'package:blue_bees/screens/home_screen.dart';
import 'package:blue_bees/screens/signup_page.dart';
import 'package:blue_bees/widgets/cutome_elevated_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IntlPhoneField(
                      focusNode: focusNode,
                      pickerDialogStyle:
                          PickerDialogStyle(backgroundColor: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: const TextStyle(color: Colors.black),
                        enabled: true,
                        disabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade900)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade200)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade50),
                        ),
                      ),
                      languageCode: "en",
                      onChanged: (phone) {
                        if (kDebugMode) {
                          print(phone.completeNumber);
                        }
                      },
                      onCountryChanged: (country) {
                        if (kDebugMode) {
                          print('Country changed to: ${country.name}');
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Remember me"),
                      Checkbox(
                          activeColor: const Color.fromARGB(255, 12, 82, 205),
                          value: isRememberMe,
                          onChanged: (value) {
                            isRememberMe = value!;
                            setState(() {});
                          }),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.transparent)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: Text(
                            "Register a new account",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 16.sp),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 50.h,
                          width: 100.w,
                          child: CutomElevatedButton(
                            backGroundColor:
                                const Color.fromARGB(255, 12, 82, 205),
                            textColor: Colors.white,
                            buttonName: 'Sign In',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyHomePage()));
                            },
                            borderColor: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Align(
                      alignment: FractionalOffset.centerRight,
                      child: Text(
                        'Or log in via',
                        style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                size: 35.sp,
                                FontAwesomeIcons.googlePlus,
                                color: Colors.red,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                size: 35.sp,
                                FontAwesomeIcons.twitter,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                size: 35.sp,
                                FontAwesomeIcons.facebook,
                                color: const Color.fromARGB(255, 12, 82, 205),
                              )),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
