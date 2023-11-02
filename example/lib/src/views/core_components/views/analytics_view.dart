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
        children: [],
      ),
    );
  }
}
