import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key, required this.dateTimeFormat, required this.onPressed});

  final DateFormat dateTimeFormat;
  final VoidCallback onPressed;

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
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                              side: MaterialStatePropertyAll(
                                  BorderSide(color: Colors.black)),
                              elevation: MaterialStatePropertyAll(0),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: onPressed,
                          child: const Text(
                            "Request a quote",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r)),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 12, 82, 205))),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.location_city,
                                  color: Color.fromARGB(255, 12, 82, 205))),
                        )
                      ]),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text("Heath Insurance",
                        style:
                            TextStyle(color: Colors.black, fontSize: 25.sp))),
                Container(
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            dateTimeFormat.format(DateTime.now()),
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                        const Icon(Icons.access_time, color: Colors.black)
                      ],
                    ),
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
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.circle, color: Colors.red, size: 30.sp),
                      SizedBox(width: 10.w),
                      Text("Arabic",
                          style:
                              TextStyle(color: Colors.black, fontSize: 25.sp))
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
