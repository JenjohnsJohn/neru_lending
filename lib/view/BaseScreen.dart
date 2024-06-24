import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/base_controller.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    BaseController baseController = Get.put(BaseController());
    return Obx(
      () => Scaffold(
        body: baseController.navScreens[baseController.bottomNavIndex.value],
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: baseController.navItems.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive
                  ? const Color.fromARGB(255, 105, 72, 241)
                  : Colors.grey;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    baseController.navItems[index]['icon'],
                    size: 22,
                    color: color,
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      baseController.navItems[index]['label'],
                      maxLines: 1,
                      style: TextStyle(color: color, fontSize: 10),
                    ),
                  )
                ],
              );
            },
            activeIndex: baseController.bottomNavIndex.value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            onTap: (index) => baseController.bottomNavIndex.value = index),
        floatingActionButton: Ink(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Colors.green, Colors.black],
            ),
            borderRadius: BorderRadius.all(Radius.circular(80.0)),
          ),
          child: Container(
            width: 50,
            height: 50,
            child: const Icon(Icons.add),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
