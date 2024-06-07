import 'package:app_ui_example/src/utils/constants.dart';
import 'package:app_ui_m2/core_components/views/transaction_logos/avatar/avatar.dart';
import 'package:app_ui_m2/core_components/views/transaction_logos/logo/logo.dart';
import 'package:app_ui_m2/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui_m2/design_tokens/layout_and_spacing/app_gaps.dart';
import 'package:flutter/material.dart';

class TransactionLogoView extends StatelessWidget {
  const TransactionLogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transaction Logos"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Logos",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Text("Normal Logos"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppLogo(image: kGlovoLogo),
                AppGapsM2.m,
                AppLogo(image: kJumiaLogo),
                AppGapsM2.m,
                AppLogo(image: kKfcLogo),
                AppGapsM2.m,
                AppLogo(image: kBkLogo),
                AppGapsM2.m,
                AppLogo(image: kYangoLogo),
                AppGapsM2.m,
                AppLogo(image: kNetflixLogo),
              ],
            ),
          ),
          AppGapsM2.m,
          Text("Unavailable Logos"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppLogo(image: kOrangeLogo),
                AppGapsM2.m,
                AppLogo(
                  image: kOrangeLogo,
                  available: false,
                ),
                AppGapsM2.m,
                AppLogo(image: kMtnLogo),
                AppGapsM2.m,
                AppLogo(
                  image: kMtnLogo,
                  available: false,
                ),
                AppGapsM2.m,
                AppLogo(image: kSgbciLogo),
                AppGapsM2.m,
                AppLogo(
                  image: kSgbciLogo,
                  available: false,
                ),
                AppGapsM2.m,
                AppLogo(image: kSibLogo),
                AppGapsM2.m,
                AppLogo(
                  image: kSibLogo,
                  available: false,
                ),
              ],
            ),
          ),
          AppGapsM2.xl,
          const Text(
            "Avatars",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppGapsM2.m,
          Text("Djamo Avatar"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppAvatar(
                  image: kProfile1,
                  showBadge: true,
                ),
                AppGapsM2.m,
                AppAvatar(
                  image: kProfile2,
                  showBadge: true,
                ),
                AppGapsM2.m,
                AppAvatar(
                  image: kProfile3,
                  showBadge: true,
                ),
                AppGapsM2.m,
                AppAvatar(
                  image: kProfile4,
                  showBadge: true,
                ),
              ],
            ),
          ),
          AppGapsM2.m,
          Text("Normal Avatars"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppAvatar(
                  image: kProfile1,
                ),
                AppGapsM2.m,
                AppAvatar(
                  image: kProfile2,
                ),
                AppGapsM2.m,
                AppAvatar(
                  image: kProfile3,
                ),
                AppGapsM2.m,
                AppAvatar(
                  image: kProfile4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
