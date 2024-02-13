import 'package:get/get.dart';

class SettingTabController extends GetxController {
  RxInt selectedTabIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedTabIndex.value = index;

    update();
  }
}
