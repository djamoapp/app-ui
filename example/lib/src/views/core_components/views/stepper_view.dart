import 'package:app_ui_m2/core/models/app_step.dart';
import 'package:app_ui_m2/core_components/views/stepper/app_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepperView extends StatelessWidget {
  const StepperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: AppStepper(
          initialStep: 0,
          stepperWidth: Get.size.width - 48,
          onFinish: () {
            Get.back();
          },
          steps: [
            AppStep(
              content: Container(
                color: Colors.greenAccent,
              ),
            ),
            AppStep(
              content: Container(
                color: Colors.redAccent,
              ),
            ),
            AppStep(
              content: Container(
                color: Colors.blueAccent,
              ),
            ),
            AppStep(
              content: Container(
                color: Colors.yellow,
              ),
              validator: () => true,
            ),
          ],
        ),
      ),
    );
  }
}
