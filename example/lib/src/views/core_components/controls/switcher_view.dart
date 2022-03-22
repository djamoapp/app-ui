import 'package:app_ui/core_components/controls/switcher/switcher.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/switcher_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitcherView extends GetView<SwitcherController> {
  const SwitcherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switcher"),
      ),
      body: Center(
        child: Obx(() {
          return AppSwitcher(
            value: controller.isOn.value,
            onChanged: (value) {
              controller.switchValue();
            },
          );
        }),
      ),
    );
  }
}
