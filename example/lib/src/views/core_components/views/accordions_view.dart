import 'package:app_ui_example/src/controllers/core_components/views/accordions_controller.dart';
import 'package:app_ui_m2/core_components/views/accordions/accordion.dart';
import 'package:app_ui_m2/core_components/views/accordions/accordion_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccordionView extends GetView<AccordionsController> {
  const AccordionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accordion"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Obx(() {
            return AppAccordion(
              items: List.generate(
                5,
                (index) => AppAccordionItem(
                  label: "Item $index",
                  value: index,
                  groupValue: controller.selectedValue.value,
                  onTap: controller.onChoose,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
