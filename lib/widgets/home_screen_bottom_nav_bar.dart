import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:send_styce/utils/theme_ext.dart';

import '../controllers/app_controller.dart';
import '../utils/dimensions.dart';
import 'bottom_bar_item.dart';

class HomeScreenBottomNavBar extends StatelessWidget {
  const HomeScreenBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.find<AppController>();

    return Obx(
      () => ClipRect(
        
        child: Container(
          decoration: BoxDecoration(
            color: context.background,
            borderRadius: BorderRadius.circular(Dimensions.radius30),
          ),
          padding: EdgeInsets.only(
            bottom: Dimensions.height70,
            left: Dimensions.width15,
            right: Dimensions.width15,
            top: Dimensions.height20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomBarItem(
                name: 'Home',
                image: 'home',
                isActive: appController.currentAppPage.value == 0,
                onClick: () {
                  appController.changeCurrentAppPage(0);
                },
              ),
              BottomBarItem(
                name: 'Market',
                image: 'shop',
                isActive: appController.currentAppPage.value == 1,
                onClick: () {
                  appController.changeCurrentAppPage(1);
                },
              ),
              BottomBarItem(
                name: 'Activities',
                image: 'order-history',
                isActive: appController.currentAppPage.value == 2,
                onClick: () {
                  appController.changeCurrentAppPage(2);
                },
              ),
              BottomBarItem(
                name: 'Profile',
                image: 'user',
                isActive: appController.currentAppPage.value == 3,
                onClick: () {
                  appController.changeCurrentAppPage(3);
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
