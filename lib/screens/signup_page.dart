import 'package:awesome_icons/awesome_icons.dart';
import 'package:blue_bees/screens/getx_controller/auth_controller/signup_control.dart';
import 'package:blue_bees/screens/getx_controller/check_boxes/check_box_control.dart';
import 'package:blue_bees/screens/login_screen.dart';
import 'package:blue_bees/widgets/cutome_elevated_button.dart';
import 'package:blue_bees/widgets/formfield_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  final SignUpConroller signUpConroller = Get.put(SignUpConroller());
  final SelectonOnlyOfCheckBoxes selectonOnlyOfCheckBoxes =
      Get.put(SelectonOnlyOfCheckBoxes());
  FocusNode focusNode = FocusNode();
  void _submittionDataOfSigUP(BuildContext context) {
    bool isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    signUpConroller.formSubmittionForSignUp(
        context,
        _nameController.text,
        _phoneController.text,
        _emailController.text,
        _passwordController.text,
        _passwordConfirmController.text,
        selectonOnlyOfCheckBoxes.checkBoxesMainList);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
    
    super.dispose();
  }

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
                    NameFormField(nameController: _nameController),
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
                      child: PhoneTextField(
                          phoneController: _phoneController,
                          focusNode: focusNode),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: Text(
                        'Email',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    EmailTextfield(emailController: _emailController),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: Text(
                        'Password',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    PasswordTextField(passwordController: _passwordController),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(color: Colors.black, fontSize: 15.sp),
                      ),
                    ),
                    PasswordConfirmTextField(
                        passwordConfirmController: _passwordConfirmController),
                    SizedBox(height: 10.h),
                    GetBuilder<SelectonOnlyOfCheckBoxes>(
                      builder: (controller) => Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: List.generate(
                            controller.checkBoxesMainList.length,
                            (index) => Expanded(
                                  child: CheckboxListTile(
                                      activeColor: const Color.fromARGB(
                                          255, 12, 82, 205),
                                      title: Text(
                                          controller
                                              .checkBoxesMainList[index].title,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: const Color.fromARGB(
                                                  255, 12, 82, 205))),
                                      value: controller
                                          .checkBoxesMainList[index].value,
                                      onChanged: (value) {
                                        controller
                                            .particularSelectionofCheckboxes(
                                                value, index);
                                      }),
                                )),
                      ),
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
                              onPressed: () => _submittionDataOfSigUP(context),
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
