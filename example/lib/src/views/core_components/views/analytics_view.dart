import 'package:app_ui/core_components/views/analytics_widget/analytics_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Analytics Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            AppAnalyticsWidget.withSampleData(),
          ],
        ));
  }
}
