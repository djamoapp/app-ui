import 'package:flutter/material.dart';

class AppTabBarItem extends BottomNavigationBarItem {

  AppTabBarItem({required Widget icon, String? label, Widget? activeIcon,}) : super(icon: Padding(padding: const EdgeInsets.only(bottom: 8, top: 12,), child: icon,), label: label, activeIcon: Padding(padding: const EdgeInsets.only(bottom: 8), child: activeIcon ?? icon,));

}
