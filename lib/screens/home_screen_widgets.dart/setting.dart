import 'package:blue_bees/screens/getx_controller/setting_tab_controller.dart';
import 'package:blue_bees/setting_tabs/advertise_manage.dart';
import 'package:blue_bees/setting_tabs/automatic_offer.dart';
import 'package:blue_bees/setting_tabs/general_setting.dart';
import 'package:blue_bees/setting_tabs/interest_setting.dart';
import 'package:blue_bees/setting_tabs/manage_sub.dart';
import 'package:blue_bees/setting_tabs/paymetn_setting.dart';
import 'package:blue_bees/setting_tabs/security_setting.dart';
import 'package:blue_bees/setting_tabs/share_setting.dart';
import 'package:blue_bees/widgets/setting_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  SettingTabController settingTabController = Get.put(SettingTabController());

  @override
  void initState() {
    _tabController = TabController(
        length: 8,
        vsync: this,
        initialIndex: settingTabController.selectedTabIndex.value);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            SettingTabBar(
                tabController: _tabController,
                onTap: (int index) {
                  settingTabController.selectedTabIndex.value = index;
                }),
            Container(
                height: 350,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    Expanded(
                        child: TabBarView(
                      controller: _tabController,
                      children: const [
                        GeneralSettings(),
                        SecuritySettings(),
                        SharedSetting(),
                        PaymentSetting(),
                        InterestSetting(),
                        ManageSubscription(),
                        AutomaticOffer(),
                        AdvertisManage(),
                      ],
                    )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
