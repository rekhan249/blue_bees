import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardOfOfferDetails extends StatelessWidget {
  const CardOfOfferDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu,
                              size: 25.sp, color: Colors.black)),
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
                  margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("69",
                          style:
                              TextStyle(color: Colors.black, fontSize: 30.sp)),
                      SizedBox(width: 20.w),
                      Text("70",
                          style:
                              TextStyle(color: Colors.black, fontSize: 30.sp)),
                    ],
                  )),
              Container(
                width: double.infinity.w,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text('Offers',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal))),
                  TextButton(
                      onPressed: () {},
                      child: const Text('views',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal))),
                ]),
              ),
              Container(
                width: 200.w,
                padding: EdgeInsets.symmetric(vertical: 05.h, horizontal: 20.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                        color: const Color.fromARGB(255, 12, 82, 205)),
                    borderRadius: BorderRadius.all(Radius.circular(25.r))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back_ios,
                          size: 14.sp,
                          color: const Color.fromARGB(255, 12, 82, 205)),
                      Text("See offers details",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 12, 82, 205),
                              fontSize: 14.sp)),
                      SizedBox(width: 8.w),
                    ]),
              ),
              SizedBox(height: 20.h),
            ]),
      ),
    );
  }
}
