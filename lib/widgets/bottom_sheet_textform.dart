import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormBottomSheet extends StatelessWidget {
  const CustomTextFormBottomSheet({
    super.key,
    required TextEditingController firstcontrollers,
    required this.hintText,
    required this.icon1,
    required this.icon2,
  }) : _firstcontrollers = firstcontrollers;

  final TextEditingController _firstcontrollers;
  final String hintText;
  final IconData icon1;
  final IconData icon2;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _firstcontrollers,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
        prefixIcon: Icon(icon1),
        suffixIcon: Icon(icon2),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 13.sp),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.r),
            borderSide: const BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.r),
            borderSide: const BorderSide(color: Colors.grey)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    );
  }
}

class CustomTextFormSingleIcon extends StatelessWidget {
  const CustomTextFormSingleIcon({
    super.key,
    required TextEditingController firstcontrollers,
    required this.hintText,
    required this.icon1,
  }) : _firstcontrollers = firstcontrollers;

  final TextEditingController _firstcontrollers;
  final String hintText;
  final IconData icon1;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _firstcontrollers,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5.h),
          prefixIcon: Icon(icon1),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 13.sp),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.r),
              borderSide: BorderSide(color: Colors.grey, width: 1.w)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.w)),
          border: const UnderlineInputBorder(borderSide: BorderSide.none)),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field cannot be empty';
        }
        return null;
      },
    );
  }
}
