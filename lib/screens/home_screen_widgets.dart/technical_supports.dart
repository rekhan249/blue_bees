// ignore_for_file: library_private_types_in_public_api

import 'package:blue_bees/widgets/bottom_sheet_tech.dart';
import 'package:blue_bees/widgets/tech_supp_closed.dart';
import 'package:blue_bees/widgets/tech_supp_everyone.dart';
import 'package:blue_bees/widgets/tech_supp_resolved.dart';
import 'package:blue_bees/widgets/tech_supp_solve.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TechnicalSupports extends StatefulWidget {
  const TechnicalSupports({super.key});

  @override
  State<TechnicalSupports> createState() => _TechnicalSupportsState();
}

class _TechnicalSupportsState extends State<TechnicalSupports>
    with SingleTickerProviderStateMixin {
  DateFormat dateTimeFormat = DateFormat("yyyy-MM-dd");
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'Technical Support tickets',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                  child: TabbarTechinical(tabController: _tabController),
                ),
                Container(
                    height: 270.h,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    child: Expanded(
                      child: TabBarView(
                          controller: _tabController,
                          children: const [
                            TechSuppClosed(),
                            TechSuppResolving(),
                            TechSuppSolved(),
                            TechSuppEveryone(),
                          ]),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  width: double.infinity.w,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: ElevatedButton.icon(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 12, 82, 205))),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return const TechnicalBottomSheetForm();
                              });
                        },
                        icon: const Icon(Icons.add, color: Colors.white),
                        label: const Text("Open a technical support ticket",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabbarTechinical extends StatelessWidget {
  const TabbarTechinical({
    super.key,
    required TabController? tabController,
  }) : _tabController = tabController;

  final TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: Colors.black,
      automaticIndicatorColorAdjustment: true,
      dividerColor: Colors.transparent,
      isScrollable: false,
      indicatorColor: Colors.transparent,
      controller: _tabController,
      labelPadding: const EdgeInsets.symmetric(vertical: 0),
      tabs: [
        Card(
          elevation: 2,
          child: Container(
              width: 60.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: const Tab(
                child: Text('Closed'),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: const Tab(
                child: Text('Resolving'),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 60.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: const Tab(
                child: Text('Solved'),
              )),
        ),
        Card(
          elevation: 2,
          child: Container(
              width: 75.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  color: Colors.white),
              child: const Tab(
                child: Expanded(child: Text('Everyone')),
              )),
        ),
      ],
    );
  }
}
