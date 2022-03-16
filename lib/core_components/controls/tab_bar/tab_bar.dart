import 'package:flutter/material.dart';
import 'package:app_ui/core_components/controls/tab_bar/tab_bar_item.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/typography/typography.dart' as t;

class AppTabBar extends StatelessWidget {
  const AppTabBar(
      {Key? key, this.onTap, required this.items, this.currentIndex = 0})
      : super(key: key);

  final Function(int tabIndex)? onTap;

  final List<AppTabBarItem> items;

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: const Offset(0, -2),
          blurRadius: 4,
          spreadRadius: 0,
          color: const Color(0xffCDCDCD).withAlpha(61),
        ),
      ]),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: t.AppTypography.label!.bSmall,
        unselectedLabelStyle: t.AppTypography.label!.bSmall,
        unselectedItemColor: NeutralColors.disabledTextColor,
        selectedItemColor: InterfaceColors.action.defaultColor,
        currentIndex: currentIndex,
        elevation: 0,
        iconSize: 18,
        onTap: onTap,
        items: items,
      ),
    );
  }
}
