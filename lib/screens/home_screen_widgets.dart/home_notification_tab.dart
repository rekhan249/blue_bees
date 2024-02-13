import 'package:blue_bees/screens/home_screen_widgets.dart/company_profile.dart';
import 'package:blue_bees/screens/home_screen_widgets.dart/control_board.dart';
import 'package:blue_bees/screens/home_screen_widgets.dart/offerrs.dart';
import 'package:blue_bees/screens/home_screen_widgets.dart/requests.dart';
import 'package:blue_bees/screens/home_screen_widgets.dart/setting.dart';
import 'package:blue_bees/screens/home_screen_widgets.dart/technical_supports.dart';
import 'package:blue_bees/widgets/custom_search.dart';
import 'package:blue_bees/widgets/home_screen_tabbar.dart';
import 'package:blue_bees/widgets/notfy_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HomeTabNotification extends StatefulWidget {
  const HomeTabNotification({super.key});

  @override
  State<HomeTabNotification> createState() => _HomeTabNotificationState();
}

class _HomeTabNotificationState extends State<HomeTabNotification>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final TextEditingController _searchController = TextEditingController();
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: size.height * 0.60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(80.r)),
                      color: const Color.fromARGB(255, 12, 82, 205)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 35.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.menu,
                                        color: Colors.white, size: 30.sp)),
                                Text(
                                  "Notification Tab",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.normal),
                                ),
                              ]),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.notifications_none_sharp,
                                        color: Colors.white,
                                      )),
                                  CircleAvatar(
                                    child: Image.asset(
                                        cacheHeight: 50,
                                        cacheWidth: 50,
                                        "assets/images/profile1.png"),
                                  )
                                ],
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Text(
                                  "Welcome to you",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                height: 210,
                                decoration: const BoxDecoration(),
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: NotificationCards(
                                            colorValue1: Colors.white,
                                            colorValue2: Colors.green,
                                          ),
                                        );
                                      } else if (index == 1) {
                                        return const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: NotificationCards(
                                            colorValue1: Colors.white,
                                            colorValue2: Colors.red,
                                          ),
                                        );
                                      } else if (index == 2) {
                                        return const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: NotificationCards(
                                            colorValue1: Colors.white,
                                            colorValue2: Colors.red,
                                          ),
                                        );
                                      }
                                      return null;
                                    }),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: CustomSearchTextFormField(
                                    searchController: _searchController),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                  height: size.height * 0.40,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      Expanded(
                        child: TabBarView(
                            controller: _tabController,
                            children: const [
                              ControlBoard(),
                              Requests(),
                              Offers(),
                              TechnicalSupports(),
                              CompanyProfile(),
                              Setting()
                            ]),
                      ),
                    ],
                  )),
            ],
          ),
          // Positioned(
          //   top: 365.h,
          //   child: SizedBox(
          //       width: size.width,
          //       child: HomeScreenTabBar(tabController: _tabController)),
          // ),
        ],
      ),
    );
  }
}
