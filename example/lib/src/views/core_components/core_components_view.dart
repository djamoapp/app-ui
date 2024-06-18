import 'package:app_ui_example/src/controllers/core_components/core_components_controller.dart';
import 'package:app_ui_example/src/widgets/system_design_item.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoreComponentsView extends GetView<CoreComponentsController> {
  const CoreComponentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Djamo Core Components"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: controller.items.length,
        separatorBuilder: (context, index) => AppGapsM2.m,
        itemBuilder: (context, index) => SystemDesignItem(
          label: controller.items[index]["label"],
          onTap: () => controller.onItemTap(index),
        ),
      ),
    );
  }
}
