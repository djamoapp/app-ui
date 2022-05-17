import 'package:app_ui/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(List<String> args) {
  group(
    "Test of the AppText Widget",
    () {
      testWidgets(
        "Should render a TextWidget with content 'Djamo'",
        (WidgetTester tester) async {
          // Build the widget
          await tester.pumpWidget(
            MaterialApp(
              home: AppText(
                text: "Djamo",
              ),
            ),
          );

          // Find widget
          final text = find.text("Djamo");

          // Verify What is rendered
          expect(text, findsOneWidget);
        },
      );
    },
  );
}
