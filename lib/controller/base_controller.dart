import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neru_lending/view/MessageScreen.dart';
import 'package:neru_lending/view/MoreScreen.dart';
import 'package:neru_lending/view/NotificationScreen.dart';
import 'package:neru_lending/view/OverviewScreen.dart';

class BaseController extends GetxController {
  final RxList navItems = [
    {'icon': Icons.mail, 'label': 'Message'},
    {'icon': Icons.notifications, 'label': 'Notification'},
    {'icon': Icons.person, 'label': 'Overview'},
    {'icon': Icons.menu, 'label': 'More'},
  ].obs;

  final RxList navScreens = [
    const Messagescreen(),
    const NotificationScreen(),
    const OverviewScreen(),
    const MoreScreen()
  ].obs;
  final RxInt bottomNavIndex = 0.obs;
}
