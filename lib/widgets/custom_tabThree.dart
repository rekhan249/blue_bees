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
      indicatorColor: Colors.transparent,
      controller: _tabController,
      tabs: [
        Card(
          elevation: 2,
          child: Container(
              height: 40.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child:
                              Icon(Icons.request_page_outlined, size: 16.sp)),
                      const Text('The car')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child:
                              Icon(Icons.request_page_outlined, size: 16.sp)),
                      const Text('Foods')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Icon(Icons.select_all_rounded, size: 16.sp)),
                      const Text('Everyone')
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
