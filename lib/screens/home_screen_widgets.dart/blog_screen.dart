import 'package:blue_bees/models/blog_modells/getall_blogs.dart';
import 'package:blue_bees/screens/getx_controller/blog_controller/get_all_blogs.dart';
import 'package:blue_bees/screens/single_blog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  GetAllBlogsFromApi getAllBlogsFromApi = GetAllBlogsFromApi();
  String removeHtmlTags(String htmlString) {
    var document = parse(htmlString);
    String parsedString = parse(document.body!.text).documentElement!.text;
    return parsedString;
  }

  @override
  void initState() {
    getAllBlogsFromApi.getsAllBlog();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.20,
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
          Positioned(
            child: Padding(
              padding: EdgeInsets.only(left: 08.w, right: 08.w, top: 120.w),
              child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(),
                  child: FutureBuilder(
                    future: getAllBlogsFromApi.getsAllBlog(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasError) {
                        return const Center(
                            child: Text("There is not data yet"));
                      }
                      List<AllBlog>? allblog = snapshot.data!;
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: allblog.length,
                          itemBuilder: (context, index) {
                            var single = allblog[index];

                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SingleBlog(
                                            blogId: single.id,
                                            singleBlog: single)));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 0.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.r),
                                        topLeft: Radius.circular(20.r))),
                                child: Column(
                                  children: [
                                    Stack(children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.r),
                                            topRight: Radius.circular(20.r)),
                                        child: Image.network(
                                            single.image.toString(),
                                            fit: BoxFit.fitWidth),
                                      ),
                                      Positioned(
                                        right: 0,
                                        top: 15,
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Text(single.title!.en.toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.sp)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 05.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            for (var subSingle
                                                in single.interests)
                                              Text(
                                                  subSingle
                                                      .interestId!.title!.en
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15.sp)),
                                            SizedBox(width: 10.w),
                                            Text(
                                                DateFormat.yMMMMd('en_US')
                                                    .format(DateTime.parse(
                                                        allblog[index]
                                                            .createdAt!
                                                            .toString())),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp)),
                                          ]),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Text(
                                            removeHtmlTags(
                                                single.content!.en.toString()),
                                            style: TextStyle(fontSize: 15.sp)),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Text(
                                            removeHtmlTags(
                                                single.content!.ar.toString()),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.sp)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
