import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    final Size sizeValue = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 25.h, left: 10.w, right: 10.w),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    IconButton(
                        onPressed: () {},
                        icon:
                            Icon(Icons.menu, color: Colors.black, size: 20.sp)),
                    Text(
                      "Hi Rehmat",
                      style: TextStyle(
                          color: Colors.black,
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
                            color: Colors.black,
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: sizeValue.height,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: const Text(
                        "Rehmat Ullah",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("Rehmat Ullah"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.messenger_outline)),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}


