import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomCardTakfulwihbutton extends StatelessWidget {
  const CustomCardTakfulwihbutton({
    super.key,
    required this.dateTimeFormat,
  });

  final DateFormat dateTimeFormat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        width: double.infinity.w,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 20.r,
                  offset: const Offset(0, 0)),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // const Row(mainAxisSize: MainAxisSize.min, children: [
                        //   Icon(Icons.more_vert, color: Colors.black),
                        //   Icon(Icons.message_rounded, color: Colors.blue),
                        // ]),
                        Text("Heath Insurance",
                            style: TextStyle(
                                color: Colors.black, fontSize: 22.sp)),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("9200",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30.sp)),
                        Text("SR",
                            style: TextStyle(
                                color: Colors.black, fontSize: 12.sp)),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Al Rajhi Tikhaful",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color.fromARGB(255, 12, 82, 205))),
                      SizedBox(width: 05.w),
                      Icon(Icons.repeat_outlined,
                          size: 25.sp,
                          color: const Color.fromARGB(255, 12, 82, 205))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        dateTimeFormat.format(DateTime.now()),
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                    ),
                    Icon(Icons.access_time_rounded,
                        color: Colors.black, size: 20.sp)
                  ]),
                ),
                const Divider(),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 30.w),
                  padding:
                      EdgeInsets.symmetric(vertical: 08.h, horizontal: 5.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                          color: const Color.fromARGB(255, 12, 82, 205)),
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Sending a message",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 12, 82, 205),
                                fontSize: 14.sp)),
                        SizedBox(width: 8.w),
                        Icon(FontAwesomeIcons.comment,
                            size: 14.sp,
                            color: const Color.fromARGB(255, 12, 82, 205)),
                      ]),
                ),
              ]),
        ),
      ),
    );
  }
}
