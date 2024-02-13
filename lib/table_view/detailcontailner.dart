import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailsContainerEveryPage extends StatelessWidget {
  const DetailsContainerEveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.grey.shade400,
                offset: const Offset(0, 0))
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(120.r),
              bottomRight: Radius.circular(10.r),
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(10.r)),
          color: Colors.white),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "300",
                style:
                    TextStyle(fontSize: 30.sp, fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 2,
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    child: Text(
                      "1 +24",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15.sp,
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    "views",
                    style: TextStyle(
                        fontSize: 13.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              LinearPercentIndicator(
                percent: 0.6,
                backgroundColor: Colors.grey.shade200,
                progressColor: Colors.deepOrange,
              ),
              SizedBox(height: 5.h),
              Text(
                "You have complete 60% of your profile",
                style:
                    TextStyle(fontSize: 13.sp, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange)),
                child: Text(
                  "Supplement your Profile",
                  style: TextStyle(color: Colors.white, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const Divider(),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "300",
                style:
                    TextStyle(fontSize: 30.sp, fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 2,
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    child: Text(
                      "1 +24",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15.sp,
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    "offers sent",
                    style: TextStyle(
                        fontSize: 13.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 12, 82, 205))),
                child: Text(
                  "Look for an opportunity",
                  style: TextStyle(color: Colors.white, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const Divider(),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "300",
                style:
                    TextStyle(fontSize: 30.sp, fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 2,
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    child: Text(
                      "1 +24",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15.sp,
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    "my orders",
                    style: TextStyle(
                        fontSize: 13.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("add a request",
                        style:
                            TextStyle(color: Color.fromARGB(255, 12, 82, 205))),
                    Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 12, 82, 205),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          const Divider(),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "300",
                style:
                    TextStyle(fontSize: 30.sp, fontWeight: FontWeight.normal),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 2,
                    shadowColor: Colors.grey,
                    color: Colors.white,
                    child: Text(
                      "1 +24",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15.sp,
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Text(
                    "ad impressions",
                    style: TextStyle(
                        fontSize: 13.sp, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Manage your ads",
                        style:
                            TextStyle(color: Color.fromARGB(255, 12, 82, 205))),
                    Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 12, 82, 205),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
