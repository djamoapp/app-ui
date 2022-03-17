import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/design_tokens/colors/brand_colors.dart';
import 'package:app_ui/design_tokens/colors/interface_colors.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_example/src/utils/constants.dart';
import 'package:app_ui_example/src/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const SystemDesignApp());
}

class SystemDesignApp extends StatelessWidget {
  const SystemDesignApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: NeutralColors.neutral900,
          ),
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: kFontFamily,
          ),
        ),
        scaffoldBackgroundColor: InterfaceColors.action.backGroundColor,
        fontFamily: kFontFamily,
      ),
      color: BrandColors.black.primary,
      //defaultTransition: Transition.circularReveal,
      //scrollBehavior: const CupertinoScrollBehavior(),
      title: kAppTitle,
      getPages: Routes.pages,
      initialRoute: Routes.home,
    );
  }
}
