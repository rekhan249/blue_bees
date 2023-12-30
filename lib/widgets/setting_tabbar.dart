import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingTabBar extends StatelessWidget {
  const SettingTabBar({
    super.key,
    required TabController? tabController,
    required this.onTap,
  }) : _tabController = tabController;

  final TabController? _tabController;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dragStartBehavior: DragStartBehavior.start,
      labelColor: Colors.black,
      dividerColor: Colors.transparent,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      automaticIndicatorColorAdjustment: true,
      labelPadding: EdgeInsets.only(left: 0.w),
      indicatorColor: Colors.transparent,
      isScrollable: true,
      controller: _tabController,
      onTap: onTap,
      tabs: [
        Card(
          elevation: 2,
          child: Container(
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.settings, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('General settings')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Icon(Icons.lock_open_outlined, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('Security settings')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.share, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('Sharing settings')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 140.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.payment, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('Payment settings')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Icon(Icons.interests_outlined, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('Interest settings')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 190.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.settings, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('Manage paid subcriptions')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 130.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: Tab(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.repeat, size: 16.sp)),
                      SizedBox(width: 05.w),
                      const Text('Automatic offers')
                    ],
                  ),
                ),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
            width: 185.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                color: Colors.white),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.settings, size: 16.sp)),
                    SizedBox(width: 05.w),
                    const Text('Advertising management')
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
