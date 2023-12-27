import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCards extends StatelessWidget {
  const NotificationCards({
    super.key,
    required this.colorValue1,
    required this.colorValue2,
  });
  final Color colorValue1;
  final Color colorValue2;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 180.h,
        width: double.infinity.w,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text("Heath Insurance",
                        style:
                            TextStyle(color: Colors.black, fontSize: 25.sp))),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Advance Value"),
                        Text(
                          "Advance Value",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        Text(
                          "9200 SR",
                          style: TextStyle(fontSize: 30.sp),
                        ),
                      ]),
                ),
                Container(
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              side: const MaterialStatePropertyAll(
                                  BorderSide(color: Colors.black)),
                              elevation: const MaterialStatePropertyAll(0),
                              backgroundColor:
                                  MaterialStatePropertyAll(colorValue1)),
                          onPressed: () {},
                          child: const Text(
                            "Request big",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        decoration: const BoxDecoration(),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              side: const MaterialStatePropertyAll(
                                  BorderSide(color: Colors.black)),
                              elevation: const MaterialStatePropertyAll(0),
                              backgroundColor:
                                  MaterialStatePropertyAll(colorValue2)),
                          onPressed: () {},
                          child: const Text(
                            "Request big",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
