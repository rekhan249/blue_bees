import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomCardForBottomSheet extends StatelessWidget {
  const CustomCardForBottomSheet(
      {super.key,
      required this.dateTimeFormat,
      required this.firstText,
      required this.secondText,
      required this.onPressed1,
      required this.onPressed2});

  final DateFormat dateTimeFormat;
  final String firstText, secondText;
  final VoidCallback onPressed1, onPressed2;

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
                                  BorderSide(color: Colors.white)),
                              elevation: MaterialStatePropertyAll(0),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: onPressed1,
                          child: Text(
                            firstText,
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.sp),
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
                              onPressed: onPressed2,
                              icon: const Icon(Icons.location_city)),
                        )
                      ]),
                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(secondText,
                        style:
                            TextStyle(color: Colors.black, fontSize: 25.sp))),
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
