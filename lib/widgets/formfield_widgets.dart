import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PasswordConfirmTextField extends StatelessWidget {
  const PasswordConfirmTextField({
    super.key,
    required TextEditingController passwordConfirmController,
  }) : _passwordConfirmController = passwordConfirmController;

  final TextEditingController _passwordConfirmController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _passwordConfirmController,
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
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        ),
        validator: null);
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: _passwordController,
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
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        ),
        validator: null);
  }
}

class EmailTextfield extends StatelessWidget {
  const EmailTextfield({
    super.key,
    required TextEditingController emailController,
  }) : _emailController = emailController;

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value)) {
          return 'Please enter valid email';
        }
        return null;
      },
    );
  }
}

class NameFormField extends StatelessWidget {
  const NameFormField({
    super.key,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        } else if (!RegExp(r"^[a-zA-Z]+(?:\s[a-zA-Z]+)+$").hasMatch(value)) {
          return 'Please enter valid name';
        }
        return null;
      },
    );
  }
}

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    required TextEditingController phoneController,
    required this.focusNode,
  }) : _phoneController = phoneController;

  final TextEditingController _phoneController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      focusNode: focusNode,
      pickerDialogStyle: PickerDialogStyle(backgroundColor: Colors.white),
      decoration: InputDecoration(
        hintText: 'Phone Number',
        hintStyle: const TextStyle(color: Colors.grey),
        enabled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade900)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.r)),
            borderSide: BorderSide(color: Colors.grey.shade900)),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      ),
      languageCode: "en",
      onChanged: (phone) {
        _phoneController.text = phone.completeNumber;
        if (kDebugMode) {
          print("object ${_phoneController.text}");
        }
      },
      onCountryChanged: (country) {
        if (kDebugMode) {
          print('Country changed to: ${country.name}');
        }
      },
    );
  }
}
