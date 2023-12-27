import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:blue_bees/widgets/card_for_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomSheetFormState createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstcontrollers1 = TextEditingController();
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");

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
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCardForBottomSheet(
                    dateTimeFormat: dateTimeFormat,
                    firstText: 'Uber',
                    secondText: 'Al Arabic PartnerShip',
                    onPressed1: () {},
                    onPressed2: () {},
                  )),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 05.h),
                child: Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 08.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.w, vertical: 10.h),
                        child: Text(
                          'Comments here here file Comments here here file Comments here here file Comments here here file Comments here here file Comments here here file Comments here here file Comments here here file',
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.w, vertical: 10.h),
                        child: DropdownButton(items: [
                          DropdownMenuItem(
                              child: Text(
                            'Comment please',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                          ))
                        ], onChanged: (value) {}),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers1,
                  hintText: 'Comments here here file',
                  icon1: Icons.file_copy,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 5.h),
                child: Text(
                  '1.Comments here here file',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 5.h),
                child: Text(
                  '2.Comments here here file',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 5.h),
                child: Text(
                  '3.Comments here here file',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
