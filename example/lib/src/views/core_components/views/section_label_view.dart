import 'package:app_ui/core_components/views/section_label/section_label.dart';
import 'package:flutter/material.dart';

class SectionLabelView extends StatelessWidget {
  const SectionLabelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Section Label"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: AppSectionLabel(
            onButtonTap: () {},
          ),
        ),
      ),
    );
  }
}
