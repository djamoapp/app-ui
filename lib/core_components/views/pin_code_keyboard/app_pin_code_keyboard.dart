import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/typography/typography.dart';
import 'package:flutter/material.dart';

class AppPinCodeKeyBoard extends StatelessWidget {
  const AppPinCodeKeyBoard(
      {Key? key,
      this.onDeletePress,
      this.onFingerPrintPress,
      this.showBiometry = false,
      this.onKeyPress})
      : super(key: key);

  final void Function()? onDeletePress;
  final void Function()? onFingerPrintPress;
  final void Function(Keyboard keyValue)? onKeyPress;
  final bool showBiometry;

  @override
  Widget build(BuildContext context) {
    List<Keyboard> shuffledList = [
      Keyboard.zero,
      Keyboard.one,
      Keyboard.two,
      Keyboard.three,
      Keyboard.four,
      Keyboard.five,
      Keyboard.sex,
      Keyboard.seven,
      Keyboard.eight,
      Keyboard.nine,
      Keyboard.fingerprint,
      Keyboard.delete,
    ]..shuffle();
    final int deleteIndex = shuffledList.indexOf(Keyboard.delete);
    if (deleteIndex != shuffledList.length - 1) {
      final Keyboard temp = shuffledList[shuffledList.length - 1];
      shuffledList[shuffledList.length - 1] = Keyboard.delete;
      shuffledList[deleteIndex] = temp;
    }
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: NeutralColors.formBordersColor,
          width: 2,
        ),
        color: NeutralColors.formBordersColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        crossAxisCount: 4,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 1.5,
        children: List.generate(shuffledList.length, (index) {
          if (shuffledList[index] == Keyboard.delete) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                      const BorderRadius.only(bottomRight: Radius.circular(16)),
                  onTap: onDeletePress,
                  child: Center(child: shuffledList[index].getWidget),
                ),
              ),
            );
          }

          if (shuffledList[index] == Keyboard.fingerprint) {
            return !showBiometry
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: index == 0
                            ? Radius.circular(16)
                            : Radius.circular(0),
                        topRight: index == 3
                            ? Radius.circular(16)
                            : Radius.circular(0),
                        bottomLeft: index == 8
                            ? Radius.circular(16)
                            : Radius.circular(0),
                      ),
                      color: Colors.white,
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: index == 0
                            ? Radius.circular(16)
                            : Radius.circular(0),
                        topRight: index == 3
                            ? Radius.circular(16)
                            : Radius.circular(0),
                        bottomLeft: index == 8
                            ? Radius.circular(16)
                            : Radius.circular(0),
                      ),
                      color: Colors.white,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.only(
                          topLeft: index == 0
                              ? Radius.circular(16)
                              : Radius.circular(0),
                          topRight: index == 3
                              ? Radius.circular(16)
                              : Radius.circular(0),
                          bottomLeft: index == 8
                              ? Radius.circular(16)
                              : Radius.circular(0),
                        ),
                        onTap: onFingerPrintPress,
                        child: Center(child: shuffledList[index].getWidget),
                      ),
                    ),
                  );
          }

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: index == 0 ? Radius.circular(16) : Radius.circular(0),
                topRight: index == 3 ? Radius.circular(16) : Radius.circular(0),
                bottomLeft:
                    index == 8 ? Radius.circular(16) : Radius.circular(0),
              ),
              color: Colors.white,
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft:
                      index == 0 ? Radius.circular(16) : Radius.circular(0),
                  topRight:
                      index == 3 ? Radius.circular(16) : Radius.circular(0),
                  bottomLeft:
                      index == 8 ? Radius.circular(16) : Radius.circular(0),
                ),
                onTap: onKeyPress == null
                    ? null
                    : () => onKeyPress!(shuffledList[index]),
                child: Center(child: shuffledList[index].getWidget),
              ),
            ),
          );
        }),
      ),
    );
  }
}

enum Keyboard {
  zero,
  one,
  two,
  three,
  four,
  five,
  sex,
  seven,
  eight,
  nine,
  fingerprint,
  delete,
}

extension KeyExtension on Keyboard {
  int get intValue => Keyboard.values.indexOf(this);

  Widget get getWidget {
    if (this == Keyboard.fingerprint) {
      return const Icon(
        Icons.fingerprint,
      );
    } else if (this == Keyboard.delete) {
      return const Icon(
        Icons.backspace,
      );
    } else {
      return Text(
        intValue.toString(),
        style: AppTypography.label!.large,
      );
    }
  }
}
