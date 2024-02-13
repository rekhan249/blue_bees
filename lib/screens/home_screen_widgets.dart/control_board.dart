import 'package:blue_bees/table_view/detailcontailner.dart';
import 'package:blue_bees/widgets/card_offer_details.dart';
import 'package:blue_bees/widgets/cardwith_button.dart';
import 'package:blue_bees/widgets/custom_tabThree.dart';
import 'package:blue_bees/widgets/food_threetab.dart';
import 'package:blue_bees/widgets/thecar_threetab.dart';
import 'package:blue_bees/widgets/three_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ControlBoard extends StatefulWidget {
  const ControlBoard({super.key});

  @override
  State<ControlBoard> createState() => _ControlBoardState();
}

class _ControlBoardState extends State<ControlBoard>
    with SingleTickerProviderStateMixin {
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
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
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 20.h),
                  const DetailsContainerEveryPage(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    child: Text(
                      "Offer sent",
                      style: TextStyle(
                          fontSize: 25.sp, fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
                  SizedBox(height: 20.h),
                  CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
                  SizedBox(height: 20.h),
                  CustomCardTakfulwihbutton(dateTimeFormat: dateTimeFormat),
                  SizedBox(height: 20.h),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
                    child: Text(
                      "Request that interest you",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                      child: ThreeTabBar(tabController: _tabController)),
                  Container(
                      height: 450.h,
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                      child: Column(
                        children: [
                          Expanded(
                            child: TabBarView(
                                controller: _tabController,
                                children: const [
                                  TheCarThreeTabs(),
                                  ThreeTabScreenFood(),
                                  ThreeTabScreenEveryOne(),
                                ]),
                          ),
                        ],
                      )),
                  Container(
                    color: Colors.grey.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(255, 12, 82, 205))),
                              child: Text('More orders',
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.white))),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child:
                              Text('My ads', style: TextStyle(fontSize: 20.sp)),
                        ),
                        SizedBox(height: 20.h),
                        const CardOfOfferDetails(),
                        SizedBox(height: 20.h),
                        const CardOfOfferDetails(),
                        SizedBox(height: 20.h),
                        const CardOfOfferDetails(),
                      ],
                    ),
                  )
                ]),
          )),
    );
  }
}
