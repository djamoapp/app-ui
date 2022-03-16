import 'package:app_ui/core/constants/constants.dart';
import 'package:app_ui/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppCard extends StatelessWidget {
  final String productName;
  final String cardNumbers;
  final String expirationDate;
  final String cvv;
  final bool accountIsActive;
  final String fullName;
  const AppCard({
    Key? key,
    required this.productName,
    required this.cardNumbers,
    required this.expirationDate,
    required this.cvv,
    required this.accountIsActive,
    required this.fullName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final double imageWidth = width / 1.4;

    return Stack(alignment: AlignmentDirectional.topCenter, children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 10.0,
                spreadRadius: 0,
                offset: Offset(
                  0,
                  10,
                ),
              )
            ]),
        child: SizedBox(
          height: width / 2,
          child: Image.asset(
            accountIsActive
                ? 'assets/images/djamo_card_empty.png'
                : 'assets/images/djamo_card_empty_lock.png',
            package: kPackageName,
          ),
        ),
        //alignment: Alignment.center,
        //fit: BoxFit.contain,
      ),
      Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.black,
          loop: 1,
          child: SizedBox(
              width: imageWidth,
              height: width / 2,
              child: Column(children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  child: AppText(
                    text: fullName,
                    type: '',
                    customTextStyle: const TextStyle(
                      package: kPackageName,
                      fontFamily: kDjamoCardFontFamily,
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                )),
                Container(
                    alignment: Alignment.bottomLeft,
                    margin: const EdgeInsets.fromLTRB(5, 0, 0, 10),
                    child: AppText(
                      text: cardNumbers,
                      type: '',
                      customTextStyle: const TextStyle(
                        package: kPackageName,
                        fontFamily: kDjamoCardFontFamily,
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    )),
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.fromLTRB(5, 0, 0, 15),
                  child: Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          AppText(
                              text: "Exp Date",
                              type: '',
                              textAlign: TextAlign.start,
                              customTextStyle: TextStyle(
                                package: kPackageName,
                                fontFamily: kDjamoCardFontFamily,
                                color: Colors.white,
                                fontSize: 9,
                              )),
                          AppText(
                              text: "**/**",
                              type: '',
                              textAlign: TextAlign.start,
                              customTextStyle: TextStyle(
                                package: kPackageName,
                                fontFamily: kDjamoCardFontFamily,
                                color: Colors.white,
                                fontSize: 9,
                              ))
                        ]),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const AppText(
                                  text: "CVV",
                                  type: '',
                                  textAlign: TextAlign.start,
                                  customTextStyle: TextStyle(
                                    package: kPackageName,
                                    fontFamily: kDjamoCardFontFamily,
                                    color: Colors.white,
                                    fontSize: 9,
                                  )),
                              AppText(
                                  text: cvv,
                                  type: '',
                                  textAlign: TextAlign.start,
                                  customTextStyle: const TextStyle(
                                    package: kPackageName,
                                    fontFamily: kDjamoCardFontFamily,
                                    color: Colors.white,
                                    fontSize: 9,
                                  ))
                            ])),
                  ]),
                ),
              ])))
    ]);
  }
}
