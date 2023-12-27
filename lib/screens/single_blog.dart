import 'package:blue_bees/widgets/bottom_sheet_textform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SingleBlog extends StatefulWidget {
  const SingleBlog({super.key});

  @override
  State<SingleBlog> createState() => _SingleBlogState();
}

class _SingleBlogState extends State<SingleBlog> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: size.height,
              width: size.width,
              decoration: const BoxDecoration(),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(children: [
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
                                Text(
                                    '${DateFormat('M/d/y').parseUTC('12/16/2023')}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.sp)),
                                SizedBox(width: 10.w),
                                Text('I am a Tester',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16.sp)),
                              ]),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.r)),
                          child: Image.asset(
                            'assets/images/arabic.jpg',
                            fit: BoxFit.fitHeight,
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
                              Expanded(
                                child: Text(
                                    "Occasionally.Hey Hi I am a Tester Hey Hi I am You can also check for any open issues on the Flutter GitHub repository.If the issue persists, you might need to share relevant portions of your code (especially where the RenderSliverPadding is used) so that more specific assistance can be provided. Additionally, checking the Flutter GitHub repository or forums for similar issues and solutions can be helpful. Occasionally, issues like this may be related to the Flutter framework itself. Ensure that you are using a stable version of Flutter and Dart. You can also check for any open",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.sp)),
                              ),
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
                      TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.message),
                            suffixIcon: const Icon(Icons.comment),
                            hintText: "Comeents here",
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
                          })
                    ],
                  ),
                ),
              )),
        ),
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
