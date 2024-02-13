// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThreeTabBar extends StatelessWidget {
  const ThreeTabBar({
    super.key,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Colors.black,
      dividerColor: Colors.transparent,
      automaticIndicatorColorAdjustment: true,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      isScrollable: false,
      labelPadding: EdgeInsets.only(left: 0.w),
      padding: const EdgeInsets.all(05),
      indicator: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
          color: const Color.fromARGB(255, 12, 82, 205)),
      indicatorPadding: const EdgeInsets.all(10),
      indicatorColor: Colors.transparent,
      controller: _tabController,
      tabs: [
        Tab(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 05.h),
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                Expanded(child: Icon(Icons.request_page_outlined, size: 15.sp)),
                Text('The Car', style: TextStyle(fontSize: 13.sp))
              ],
            ),
          ),
        ),
        Tab(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 05.h),
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                Expanded(child: Icon(Icons.request_page_outlined, size: 15.sp)),
                Text('Foods', style: TextStyle(fontSize: 13.sp))
              ],
            ),
          ),
        ),
        Tab(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 05.h),
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                Expanded(child: Icon(Icons.select_all_rounded, size: 15.sp)),
                Text(
                  'EveryOne',
                  style: TextStyle(fontSize: 13.sp),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
