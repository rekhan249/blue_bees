import 'package:blue_bees/screens/single_blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
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
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SingleBlog()));
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    topRight: Radius.circular(20.r)),
                                child: Image.asset(
                                  'assets/images/arabic.jpg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  margin: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.r)),
                                      color: Colors.white),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.car_crash,
                                          color: Colors.black)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 05.h),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Text('Hey Hi I am a Tester',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25.sp)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 05.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('Hey Hi',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp)),
                                    SizedBox(width: 10.w),
                                    Text('I am a Tester',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp)),
                                  ]),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Text('Hey Hi I am a Tester',
                                    style: TextStyle(fontSize: 15.sp)),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Text('Hey Hi I am a Tester',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25.sp)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
