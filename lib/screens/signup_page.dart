import 'package:awesome_icons/awesome_icons.dart';
import 'package:blue_bees/screens/login_screen.dart';
import 'package:blue_bees/screens/phone_verification.dart';
import 'package:blue_bees/widgets/cutome_elevated_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool isServiceRequest = false;
  bool isServiceProvider = true;

  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Text(
                        'Register a new membership',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Text(
                        'User Name',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Type your name here',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        } else if (!RegExp(r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$")
                            .hasMatch(value)) {
                          return 'Please enter valid name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: IntlPhoneField(
                        focusNode: focusNode,
                        pickerDialogStyle:
                            PickerDialogStyle(backgroundColor: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade900)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.r)),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade900)),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.w),
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Type your email here',
                        hintStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 10.w),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(
                                r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value)) {
                          return 'Please enter valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'Type your Password here',
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.r),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.w),
                        ),
                        validator: null),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'Type your confirm password here',
                          hintStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.r),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.w),
                        ),
                        validator: null),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text('Service requester',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      color: const Color.fromARGB(
                                          255, 12, 82, 205))),
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
                                      color: const Color.fromARGB(
                                          255, 12, 82, 205))),
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
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.transparent)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 16.sp),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: CutomElevatedButton(
                              buttonName: 'Register a new account',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PhoneVerifactionScreen()));
                              },
                              borderColor: Colors.transparent,
                              textValue: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Align(
                        alignment: FractionalOffset.centerRight,
                        child: Text(
                          'Or log in via',
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.sp),
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
                                        color: const Color.fromARGB(
                                                255, 12, 82, 205)
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
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
