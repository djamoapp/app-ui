import 'package:app_ui_example/src/controllers/core_components/controls/radio_controller.dart';
import 'package:app_ui_m2/core_components/controls/radio/radio.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioView extends GetView<RadioController> {
  const RadioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return AppRadio(
                value: 1,
                groupValue: controller.selectedValue.value,
                onChanged: controller.onSelectRadio,
              );
            }),
            AppGaps.l,
            Obx(() {
              return AppRadio(
                value: 2,
                groupValue: controller.selectedValue.value,
                onChanged: controller.onSelectRadio,
              );
            }),
            AppGaps.l,
            Obx(() {
              return AppRadio(
                value: 3,
                groupValue: controller.selectedValue.value,
                onChanged: controller.onSelectRadio,
              );
            }),
          ],
        ),
      ),
    );
  }
}
