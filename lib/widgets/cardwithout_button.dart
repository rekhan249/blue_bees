import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomCardTakfulwihoutbutton extends StatelessWidget {
  const CustomCardTakfulwihoutbutton({
    super.key,
    required this.dateTimeFormat,
  });

  final DateFormat dateTimeFormat;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        width: double.infinity.w,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(mainAxisSize: MainAxisSize.min, children: [
                          Icon(Icons.more_vert, color: Colors.black),
                          Icon(Icons.message_rounded, color: Colors.blue),
                        ]),
                        Text("Heath Insurance",
                            style: TextStyle(
                                color: Colors.black, fontSize: 25.sp)),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text("9200 SR",
                        style:
                            TextStyle(color: Colors.black, fontSize: 40.sp))),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Al Rajhi Tikhaful",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color.fromARGB(255, 12, 82, 205))),
                      Icon(Icons.repeat_outlined,
                          size: 30.sp,
                          color: const Color.fromARGB(255, 12, 82, 205))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          dateTimeFormat.format(DateTime.now()),
                          style: const TextStyle(color: Colors.black),
                        ),
                        icon: const Icon(Icons.av_timer, color: Colors.black)),
                    TextButton.icon(
                        onPressed: () {},
                        label: const Text(
                          'Riyadh',
                          style: TextStyle(color: Colors.black),
                        ),
                        icon:
                            const Icon(Icons.location_on, color: Colors.black)),
                  ]),
                ),
              ]),
        ),
      ),
    );
  }
}
