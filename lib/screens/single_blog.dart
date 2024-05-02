import 'package:blue_bees/models/blog_modells/get_single.dart';
import 'package:blue_bees/models/blog_modells/getall_blogs.dart';
import 'package:blue_bees/screens/getx_controller/blog_controller/get_all_blogs.dart';
import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

class SingleBlog extends StatefulWidget {
  final String? blogId;
  final AllBlog singleBlog;
  const SingleBlog({super.key, this.blogId, required this.singleBlog});

  @override
  State<SingleBlog> createState() => _SingleBlogState();
}

class _SingleBlogState extends State<SingleBlog> {
  GetSingleBlogById getSingleBlogById = GetSingleBlogById();
  List<ResponseDataValue>? allBlogDataList = [];
  @override
  void initState() {
    getSingleBlogData();
    super.initState();
  }

  getSingleBlogData() async {
    allBlogDataList = await getSingleBlogById.getSingleBlog(widget.blogId);
  }

  @override
  Widget build(BuildContext context) {
    String removeHtmlTags(String htmlString) {
      var document = parse(htmlString);
      String parsedString = parse(document.body!.text).documentElement!.text;
      return parsedString;
    }

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    FutureBuilder(
                      future: getSingleBlogById.getSingleBlog(widget.blogId),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        if (snapshot.hasError) {
                          return const Center(
                              child: Text("There is not data yet"));
                        }
                        var snapshotData = snapshot.data;
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshotData!.length,
                          itemBuilder: (context, index) {
                            var snapData = snapshotData[index];
                            return Column(children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Text(snapData.title!.en.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.sp)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 05.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                          DateFormat.yMMMMd('en_US').format(
                                              DateTime.parse(snapData.createdAt!
                                                  .toString())),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp)),
                                      SizedBox(width: 10.w),
                                      Text(
                                          snapData.interests
                                              .map((e) =>
                                                  e.interestId!.title!.en)
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp)),
                                    ]),
                              ),
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r)),
                                child: Image.network(
                                  snapData.image.toString(),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              SizedBox(height: 05.h),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Text(snapData.title!.ar.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.sp)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 05.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Text(
                                            removeHtmlTags(snapData.content!.en
                                                .toString()),
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.sp)),
                                      ),
                                    ]),
                              ),
                              // Align(
                              //   alignment: Alignment.bottomRight,
                              //   child: Padding(
                              //     padding:
                              //         EdgeInsets.symmetric(horizontal: 8.w),
                              //     child: Text('Hey Hi I am a Tester',
                              //         style: TextStyle(fontSize: 15.sp)),
                              //   ),
                              // ),
                              // Align(
                              //   alignment: Alignment.bottomRight,
                              //   child: Padding(
                              //     padding:
                              //         EdgeInsets.symmetric(horizontal: 8.w),
                              //     child: Text('Hey Hi I am a Tester',
                              //         style: TextStyle(
                              //             color: Colors.black,
                              //             fontSize: 25.sp)),
                              //   ),
                              // ),
                            ]);
                          },
                        );
                      },
                    ),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.message),
                          suffixIcon: const Icon(Icons.comment),
                          hintText: "Comments here",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Field cannot be empty';
                          }
                          return null;
                        },
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return const MyBottomSheetForm();
                              });
                        }),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

class MyBottomSheetForm extends StatefulWidget {
  const MyBottomSheetForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyBottomSheetFormState createState() => _MyBottomSheetFormState();
}

class _MyBottomSheetFormState extends State<MyBottomSheetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstcontrollers1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Add Comments",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextFormBottomSheet(
                  firstcontrollers: _firstcontrollers1,
                  hintText: 'Comments here here file',
                  icon1: Icons.file_copy,
                  icon2: Icons.abc,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
