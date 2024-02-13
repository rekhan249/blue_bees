import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TechSuppClosed extends StatefulWidget {
  const TechSuppClosed({super.key});

  @override
  State<TechSuppClosed> createState() => _TechSuppClosedState();
}

class _TechSuppClosedState extends State<TechSuppClosed> {
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(05),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white),
                          child: const Text(
                            'Closed',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text('A Problem in',
                            style: TextStyle(
                                color: Colors.black, fontSize: 20.sp)),
                        SizedBox(height: 10.h),
                        Text(
                            'A problem when opening the application on an Android mobile phone. It exits after a minute',
                            style: TextStyle(
                                color: Colors.black, fontSize: 12.sp)),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(dateTimeFormat.format(DateTime.now()),
                                style: const TextStyle(color: Colors.black)),
                            SizedBox(width: 10.w),
                            const Icon(Icons.access_time)
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 5.h),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 12, 82, 205)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r))),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_back_ios,
                                      color: Color.fromARGB(255, 12, 82, 205)),
                                  Text('See Ticket Detials',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 12, 82, 205)))
                                ],
                              ),
                            ))
                      ]),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
