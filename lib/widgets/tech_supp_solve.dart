import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TechSuppSolved extends StatefulWidget {
  const TechSuppSolved({super.key});

  @override
  State<TechSuppSolved> createState() => _TechSuppSolvedState();
}

class _TechSuppSolvedState extends State<TechSuppSolved> {
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
              elevation: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Solved',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text('A Problem in',
                            style: TextStyle(
                                color: Colors.black, fontSize: 25.sp)),
                        SizedBox(height: 10.h),
                        Text(
                            'A problem when opening the application on an Android mobile phone. It exits after a minute',
                            style: TextStyle(
                                color: Colors.black, fontSize: 15.sp)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(dateTimeFormat.format(DateTime.now()),
                                style: const TextStyle(color: Colors.black)),
                            SizedBox(width: 10.w),
                            const Icon(Icons.access_time)
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  side: MaterialStatePropertyAll(BorderSide(
                                      color: Color.fromARGB(255, 12, 82, 205))),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white)),
                              onPressed: () {},
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
                              )),
                        )
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
