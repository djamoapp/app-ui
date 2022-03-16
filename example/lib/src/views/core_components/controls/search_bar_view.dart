import 'package:app_ui/core_components/controls/search_bar/search_bar.dart';
import 'package:flutter/material.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Bar"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          AppSearchBar(controller: TextEditingController()),
        ],
      ),
    );
  }
}
