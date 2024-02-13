import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvertisManage extends StatefulWidget {
  const AdvertisManage({super.key});

  @override
  State<AdvertisManage> createState() => _AdvertisManageState();
}

class _AdvertisManageState extends State<AdvertisManage> {
  final TextEditingController _firstcontrollers4 = TextEditingController();
  final TextEditingController _namecontrollers = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'Advertinsing management',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Previously added ads',
                    style: TextStyle(fontSize: 16.sp)),
              ),
              Card(
                  elevation: 5,
                  child: Container(
                    height: 40.h,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                            ),
                            Text('Advertinsing above - Orders page')
                          ]),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Add an ad',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Added ad data specify where it will appear',
                  style: TextStyle(fontSize: 12.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Enter advertisement title here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers4,
                  hintText: 'upload here file',
                  icon1: Icons.file_copy,
                  icon2: Icons.abc,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Advertisement link',
                    style: TextStyle(fontSize: 15.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Write the ad link here',
                    icon1: Icons.abc),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Advertisement site',
                    style: TextStyle(fontSize: 15.sp)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormSingleIcon(
                    firstcontrollers: _namecontrollers,
                    hintText: 'Choose from the places availabe on the site',
                    icon1: Icons.abc),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(20.r)),
                child: const Text(
                  'Add Advertisement',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
                alignment: AlignmentDirectional.bottomEnd,
                width: double.infinity.w,
                decoration: const BoxDecoration(color: Colors.white),
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 12, 82, 205))),
                    onPressed: () {},
                    child: const Text("Add another ad",
                        style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
