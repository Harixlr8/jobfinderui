import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jobfinderui/utils/colors.dart';

import '../../controllers/home_controller.dart';
import '../wallet/wallet_screen.dart';
import '../work/workscreen.dart';
import 'homescreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBody = const [
      HomeScreen(),
      WorkScreen(),
      WalletScreen(),
    ];

    var navBarItem = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.work_outlined), label: 'Works'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            onTap: (value) => controller.currentNavIndex.value = value,
            currentIndex: controller.currentNavIndex.value,
            items: navBarItem,
            unselectedItemColor: whiteColor,
            backgroundColor: blackCustom,
            selectedItemColor: buttonColor,
            type: BottomNavigationBarType.fixed,
            // selectedLabelStyle: TextStyle(fontFamily: semibold),
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
