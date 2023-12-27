import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstcontrollers1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers1,
                  hintText: 'Enter order Address here',
                  icon1: Icons.abc,
                  icon2: Icons.abc,
                ),
              ),
              Container(
                height: 250,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: true,
                        onChanged: (value) {}),
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: false,
                        onChanged: (value) {}),
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: true,
                        onChanged: (value) {}),
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: false,
                        onChanged: (value) {}),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 250,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: true,
                        onChanged: (value) {}),
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: false,
                        onChanged: (value) {}),
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: true,
                        onChanged: (value) {}),
                    CheckboxListTile(
                        title: const Text('Checkbox'),
                        value: false,
                        onChanged: (value) {}),
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
