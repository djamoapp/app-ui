import 'package:flutter/material.dart';
import 'package:app_ui/core_components/page_header/page_header.dart';

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
