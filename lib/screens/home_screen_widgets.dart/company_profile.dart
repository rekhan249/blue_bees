import 'package:awesome_icons/awesome_icons.dart';
import 'package:blue_bees/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CompanyProfile extends StatefulWidget {
  const CompanyProfile({super.key});

  @override
  State<CompanyProfile> createState() => _CompanyProfileState();
}

class _CompanyProfileState extends State<CompanyProfile> {
  final DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50.h),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(Icons.place),
                            SizedBox(height: 05.h),
                            Text('the address',
                                style: TextStyle(fontSize: 14.h)),
                            SizedBox(height: 02.h),
                            Text('Private insurance file',
                                style: TextStyle(fontSize: 18.h))
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(Icons.phone_in_talk_sharp),
                            SizedBox(height: 05.h),
                            Text('phone number',
                                style: TextStyle(fontSize: 14.h)),
                            SizedBox(height: 02.h),
                            Text('03451234567',
                                style: TextStyle(fontSize: 18.h))
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(Icons.mail_outline),
                            SizedBox(height: 05.h),
                            Text('E-main', style: TextStyle(fontSize: 14.h)),
                            SizedBox(height: 02.h),
                            Text('mail@email.com',
                                style: TextStyle(fontSize: 18.h))
                          ],
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                    'There is a long established fact that hte readable content of a page willl distract'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Attachments', style: TextStyle(fontSize: 25.h)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.file_copy_outlined),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.arrowAltCircleDown,
                                  size: 25.sp,
                                  color:
                                      const Color.fromARGB(255, 12, 82, 205)),
                              Text('Private insurance file',
                                  style: TextStyle(fontSize: 15.h)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(dateTimeFormat.format(DateTime.now()),
                                  style: TextStyle(fontSize: 15.h)),
                              SizedBox(width: 10.w),
                              Icon(FontAwesomeIcons.clock,
                                  size: 15.sp, color: Colors.black),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.file_copy_outlined),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(FontAwesomeIcons.arrowAltCircleDown,
                                  size: 25.sp,
                                  color:
                                      const Color.fromARGB(255, 12, 82, 205)),
                              Text('Private insurance file',
                                  style: TextStyle(fontSize: 15.h)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(dateTimeFormat.format(DateTime.now()),
                                  style: TextStyle(fontSize: 15.h)),
                              SizedBox(width: 10.w),
                              Icon(FontAwesomeIcons.clock,
                                  size: 15.sp, color: Colors.black),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 35.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white),
                        child: Icon(
                          size: 20.sp,
                          FontAwesomeIcons.link,
                          color: Colors.black,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 35.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.blue.shade900),
                        child: Icon(
                          size: 20.sp,
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 35.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.lightBlueAccent.shade400),
                        child: Icon(
                          size: 20.sp,
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Container(
                        height: 35.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: const Color.fromARGB(255, 12, 82, 205)),
                        child: Icon(
                          size: 20.sp,
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                      )),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Add orders', style: TextStyle(fontSize: 25.h)),
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCard(
                      dateTimeFormat: dateTimeFormat, onPressed: () {})),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCard(
                      dateTimeFormat: dateTimeFormat, onPressed: () {})),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCard(
                      dateTimeFormat: dateTimeFormat, onPressed: () {})),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCard(
                      dateTimeFormat: dateTimeFormat, onPressed: () {})),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCard(
                      dateTimeFormat: dateTimeFormat, onPressed: () {})),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: CustomCard(
                      dateTimeFormat: dateTimeFormat, onPressed: () {})),
            ]),
      ),
    );
  }
}
