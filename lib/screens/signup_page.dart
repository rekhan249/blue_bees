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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Text(
                        'Register a new membership',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18.sp),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'User Name',
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ),
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Type your name here',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: IntlPhoneField(
                        focusNode: focusNode,
                        pickerDialogStyle:
                            PickerDialogStyle(backgroundColor: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(color: Colors.black),
                          enabled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade900)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Type your email here',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
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
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ),
                    TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'Type your Password here',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        validator: null),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                      ),
                    ),
                    TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'Type your confirm password here',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        validator: null),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    SizedBox(height: 20.h),
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
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 50.h,
                            width: 200.w,
                            child: CutomElevatedButton(
                              backGroundColor:
                                  const Color.fromARGB(255, 12, 82, 205),
                              textColor: Colors.white,
                              buttonName: 'Register a new account',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PhoneVerifactionScreen()));
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
