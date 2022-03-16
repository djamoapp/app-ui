import 'package:app_ui/core_components/controls/checkbox/checkbox.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/checkbox_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxView extends GetView<CheckBoxController> {
  const CheckBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: Center(
        child: Obx(() {
          return AppCheckBox(
            value: controller.isChecked.value,
            onChanged: (v) => controller.onTouch(),
          );
        }),
      ),
    );
  }
}
