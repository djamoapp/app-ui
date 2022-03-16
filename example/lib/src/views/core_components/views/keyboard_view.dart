import 'package:app_ui/core_components/views/pin_code_keyboard/app_pin_code_keyboard.dart';
import 'package:flutter/material.dart';

class KeyBoardView extends StatelessWidget {
  const KeyBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Keyboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: AppPinCodeKeyBoard(
            showFingerPrint: true,
            onDeletePress: () {
              print("delete");
            },
            onFingerPrintPress: () {
              print("finger");
            },
            onKeyPress: (key) {
              print(key.intValue);
            },
          ),
        ),
      ),
    );
  }
}
