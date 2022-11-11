import 'package:app_ui/core_components/controls/buttons/main_cta/duo_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/primary_cta.dart';
import 'package:app_ui/core_components/controls/buttons/main_cta/secondary_cta.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      categories: [
        WidgetbookCategory(
          name: 'Controls',
          widgets: [
            WidgetbookComponent(
              name: 'Buttons',
              useCases: [
                WidgetbookUseCase(
                  name: 'Primary CTA',
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: PrimaryCTA(),
                      ),
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Secondary CTA',
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: SecondaryCTA(),
                      ),
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Duo CTA',
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: DuoCTA(),
                      ),
                    );
                  },
                ),
                WidgetbookUseCase(
                  name: 'Standard Buttons',
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: DuoCTA(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      appInfo: AppInfo(name: 'Djamo App Strorybook'),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
    );
  }
}
