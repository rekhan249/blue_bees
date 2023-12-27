import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleMessageScreen extends StatefulWidget {
  const SingleMessageScreen({super.key});

  @override
  State<SingleMessageScreen> createState() => _SingleMessageScreenState();
}

class _SingleMessageScreenState extends State<SingleMessageScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 125.h,
        flexibleSpace: Container(
            height: size.height * 0.25,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(100.r)),
                color: Colors.grey.shade200),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 35.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                      child: Text(
                        textAlign: TextAlign.end,
                        "I don't What is",
                        style: TextStyle(fontSize: 25.sp, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
                      child: Text(
                        textAlign: TextAlign.end,
                        "I don't What is",
                        style: TextStyle(fontSize: 25.sp, color: Colors.black),
                      ),
                    )
                  ]),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.66,
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(25.r),
                                  bottomEnd: Radius.circular(30.r),
                                  topStart: Radius.circular(25.r)),
                              color: const Color.fromARGB(255, 12, 82, 205)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 5.h),
                            child: Text(
                              textAlign: TextAlign.end,
                              "I don't What is",
                              style: TextStyle(
                                  fontSize: 25.sp, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(25.r),
                                  bottomEnd: Radius.circular(30.r),
                                  bottomStart: Radius.circular(25.r)),
                              color: Colors.grey.shade300),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 5.h),
                            child: Text(
                              textAlign: TextAlign.start,
                              "I don't What is",
                              style: TextStyle(
                                  fontSize: 25.sp, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.w),
                    child: Container(
                      height: 58.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: Colors.grey, width: 2.5.w)),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 8.w, top: 8.h),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5.w)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.5.w)),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
