// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TabControllerState extends GetxController {
//   final selectedTabIndex = 0.obs;

//   void changeTabIndex(int index) {
//     selectedTabIndex.value = index;
//   }
// }

// class MyApp extends StatelessWidget {
//   final TabControllerState controller = TabControllerState();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dynamic Tab Colors with GetX'),
//           bottom: TabBar(
//             tabs: [
//               Tab(text: 'Tab 1'),
//               Tab(text: 'Tab 2'),
//               Tab(text: 'Tab 3'),
//             ],
//             onTap: controller.changeTabIndex,
//           ),
//         ),
//         body: Obx(() => TabBarView(
//               children: [
//                 Container(color: _getColor(0)),
//                 Container(color: _getColor(1)),
//                 Container(color: _getColor(2)),
//               ],
//               controller: TabController(length: 3, initialIndex: controller.selectedTabIndex.value),
//             )),
//       ),
//     );
//   }

//   Color _getColor(int index) {
//     return controller.selectedTabIndex.value == index ? Colors.blue : Colors.grey;
//   }
// }