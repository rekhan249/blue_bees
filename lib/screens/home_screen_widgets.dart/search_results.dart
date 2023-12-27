import 'package:blue_bees/screens/home_screen_widgets.dart/filter_screen.dart';
import 'package:blue_bees/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({super.key});

  @override
  State<SearchResultsScreen> createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  DateFormat dateTimeFormat = DateFormat("yyyy-mm-dd");
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.30,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(100.r)),
                color: const Color.fromARGB(255, 12, 82, 205)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 35.h),
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
                            "Hi Rehmat",
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
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
            child: Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: CustomCard(
                              dateTimeFormat: dateTimeFormat,
                              onPressed: () {}));
                    } else if (index == 1) {
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: CustomCard(
                              dateTimeFormat: dateTimeFormat,
                              onPressed: () {}));
                    } else if (index == 2) {
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: CustomCard(
                              dateTimeFormat: dateTimeFormat,
                              onPressed: () {}));
                    } else if (index == 3) {
                      return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: CustomCard(
                              dateTimeFormat: dateTimeFormat,
                              onPressed: () {}));
                    } else if (index == 4) {
                      return ElevatedButton.icon(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 12, 82, 205))),
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return const FilterScreen();
                                });
                          },
                          icon: Icon(Icons.arrow_forward,
                              size: 16.sp, color: Colors.white),
                          label: const Text(
                            "filter screen",
                            style: TextStyle(color: Colors.white),
                          ));
                    }
                    return null;
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
