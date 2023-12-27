import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _searchController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
          hintText: "Search here",
          suffixIcon: const Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.r)),
              borderSide: const BorderSide(color: Colors.black)),
          border: const UnderlineInputBorder(borderSide: BorderSide.none)),
    );
  }
}
