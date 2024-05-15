import 'package:app_ui_m2/core_components/page_header/page_header.dart';
import 'package:flutter/material.dart';

class PageHeaderView extends StatelessWidget {
  const PageHeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Header"),
      ),
      body: AppPageHeader(),
    );
  }
}
