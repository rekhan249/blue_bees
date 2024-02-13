import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenTabBar extends StatelessWidget {
  const HomeScreenTabBar({
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
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      indicatorColor: Colors.transparent,
      labelPadding: EdgeInsets.only(left: 0.w),
      controller: _tabController,
      isScrollable: true,
      tabs: [
        Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Tab(
                text: 'Control Board',
                icon: Icon(Icons.home_outlined, size: 40.sp))),
        Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Tab(
                text: 'Requests',
                icon: Icon(Icons.request_page_outlined, size: 40.sp))),
        Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.symmetric(horizontal: 45.w, vertical: 10.h),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Tab(
                text: 'Offers',
                icon: Icon(Icons.local_offer_outlined, size: 40.sp))),
        Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Tab(
                text: 'Technical Support',
                icon: Icon(Icons.support_outlined, size: 40.sp))),
        Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Tab(
                text: 'Company Profile',
                icon: Icon(Icons.plagiarism_outlined, size: 40.sp))),
        Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.h),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 0))
                ],
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
                color: Colors.white),
            child: Tab(
                text: 'Settings',
                icon: Icon(Icons.settings_applications_outlined, size: 40.sp))),
      ],
    );
  }
}
