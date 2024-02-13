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
    return Container(
      width: double.infinity.w,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20.r,
                offset: const Offset(0, 0))
          ]),
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
                        child: Text(
                          "Request a quote",
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.r)),
                            border: Border.all(
                                color: const Color.fromARGB(255, 12, 82, 205))),
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
                      style: TextStyle(color: Colors.black, fontSize: 22.sp))),
              Container(
                width: double.infinity.w,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          dateTimeFormat.format(DateTime.now()),
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                        ),
                      ),
                      Icon(Icons.access_time,
                          color: Colors.black, size: 20.spMax)
                    ],
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        'Riyadh',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                      icon: Icon(Icons.location_on,
                          color: Colors.black, size: 20.spMax)),
                ]),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.circle, color: Colors.red, size: 25.sp),
                    SizedBox(width: 10.w),
                    Text("Arabic",
                        style: TextStyle(color: Colors.black, fontSize: 20.sp))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
