import 'package:app_ui_example/src/controllers/core_components/views/views_controller.dart';
import 'package:app_ui_example/src/widgets/system_design_item.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewsView extends GetView<ViewsController> {
  const ViewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Views"),
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
