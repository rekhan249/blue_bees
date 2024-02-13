// ignore_for_file: library_private_types_in_public_api

import 'package:blue_bees/table_view/detailcontailner.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const DetailsContainerEveryPage(),
              SizedBox(height: 50.h),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                  child:
                      TabBarView(controller: _tabController, children: const [
                    TechSuppClosed(),
                    TechSuppResolving(),
                    TechSuppSolved(),
                    TechSuppEveryone(),
                  ])),
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
      indicator: BoxDecoration(
          color: const Color.fromARGB(255, 12, 82, 205),
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      isScrollable: false,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      indicatorColor: Colors.transparent,
      controller: _tabController,
      labelPadding: const EdgeInsets.symmetric(vertical: 0),
      tabs: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: const BoxDecoration(),
            child: const Tab(
              child: Text('Closed'),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: const BoxDecoration(),
            child: const Tab(
              child: Text('Resolving'),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: const BoxDecoration(),
            child: const Tab(
              child: Text('Solved'),
            )),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: const BoxDecoration(),
            child: const Tab(
              child: Expanded(child: Text('Everyone')),
            )),
      ],
    );
  }
}
