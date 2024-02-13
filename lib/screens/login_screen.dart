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
                        style: TextStyle(color: Colors.black, fontSize: 16.sp),
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
                          hintText: 'Phone Number',
                          hintStyle: const TextStyle(color: Colors.black),
                          enabled: true,
                          disabledBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade900)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade900)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h)),
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
                  SizedBox(height: 15.h),
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
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: CutomElevatedButton(
                            buttonName: 'Sign In',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyHomePage()));
                            },
                            borderColor: Colors.transparent,
                            textValue: 10.sp,
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
                        style: TextStyle(color: Colors.black, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.w, vertical: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.red.shade300)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: Icon(
                              size: 15.sp,
                              FontAwesomeIcons.googlePlusG,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.w, vertical: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(color: Colors.blue.shade300)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: Icon(
                              size: 15.sp,
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.w, vertical: 8),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          const Color.fromARGB(255, 12, 82, 205)
                                              .withOpacity(0.8))
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: Icon(
                                size: 15.sp,
                                FontAwesomeIcons.facebookF,
                                color: Colors.white),
                          ),
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
