import 'package:app_ui/core_components/views/loader/loader.dart';
import 'package:flutter/material.dart';

class LoaderView extends StatelessWidget {
  const LoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Loader"),
        ),
        body: Center(
          child: AppLoader(),
        ));
  }
}
