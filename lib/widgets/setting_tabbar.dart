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
      labelColor: Colors.white,
      dividerColor: Colors.transparent,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      automaticIndicatorColorAdjustment: true,
      labelPadding: EdgeInsets.only(left: 10.w),
      indicatorColor: Colors.transparent,
      indicator: BoxDecoration(
          color: const Color.fromARGB(255, 12, 82, 205),
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      isScrollable: true,
      controller: _tabController,
      onTap: onTap,
      tabs: [
        Container(
            width: 142.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.settings, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('General settings')
                  ],
                ),
              ),
            )),
        Container(
            width: 145.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Icon(Icons.lock_open_outlined, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('Security settings')
                  ],
                ),
              ),
            )),
        Container(
            width: 145.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.share, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('Sharing settings')
                  ],
                ),
              ),
            )),
        Container(
            width: 152.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.payment, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('Payment settings')
                  ],
                ),
              ),
            )),
        Container(
            width: 145.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Icon(Icons.interests_outlined, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('Interest settings')
                  ],
                ),
              ),
            )),
        Container(
            width: 205.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.settings, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('Manage paid subcriptions')
                  ],
                ),
              ),
            )),
        Container(
            width: 145.w,
            decoration: const BoxDecoration(),
            child: Tab(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.repeat, size: 16.sp)),
                    SizedBox(width: 10.w),
                    const Text('Automatic offers')
                  ],
                ),
              ),
            )),
        Container(
          width: 198.w,
          decoration: const BoxDecoration(),
          child: Tab(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.settings, size: 16.sp)),
                  SizedBox(width: 10.w),
                  const Text('Advertising management')
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
