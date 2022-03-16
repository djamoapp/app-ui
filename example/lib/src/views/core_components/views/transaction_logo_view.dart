import 'package:app_ui/core_components/views/transaction_logos/avatar/avatar.dart';
import 'package:app_ui/core_components/views/transaction_logos/logo/logo.dart';
import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:app_ui/design_tokens/layout_and_spacing/spacing.dart';
import 'package:app_ui_example/src/utils/constants.dart';
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
          AppSpacing.m,
          Text("Normal Logos"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppLogo(image: kGlovoLogo),
                AppSpacing.m,
                AppLogo(image: kJumiaLogo),
                AppSpacing.m,
                AppLogo(image: kKfcLogo),
                AppSpacing.m,
                AppLogo(image: kBkLogo),
                AppSpacing.m,
                AppLogo(image: kYangoLogo),
                AppSpacing.m,
                AppLogo(image: kNetflixLogo),
              ],
            ),
          ),
          AppSpacing.m,
          Text("Unavailable Logos"),
          Divider(),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                AppLogo(image: kOrangeLogo),
                AppSpacing.m,
                AppLogo(
                  image: kOrangeLogo,
                  available: false,
                ),
                AppSpacing.m,
                AppLogo(image: kMtnLogo),
                AppSpacing.m,
                AppLogo(
                  image: kMtnLogo,
                  available: false,
                ),
                AppSpacing.m,
                AppLogo(image: kSgbciLogo),
                AppSpacing.m,
                AppLogo(
                  image: kSgbciLogo,
                  available: false,
                ),
                AppSpacing.m,
                AppLogo(image: kSibLogo),
                AppSpacing.m,
                AppLogo(
                  image: kSibLogo,
                  available: false,
                ),
              ],
            ),
          ),
          AppSpacing.xl,
          const Text(
            "Avatars",
            style: TextStyle(
                color: NeutralColors.neutral900,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          AppSpacing.m,
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
                  isDjamoAvatar: true,
                ),
                AppSpacing.m,
                AppAvatar(
                  image: kProfile2,
                  isDjamoAvatar: true,
                ),
                AppSpacing.m,
                AppAvatar(
                  image: kProfile3,
                  isDjamoAvatar: true,
                ),
                AppSpacing.m,
                AppAvatar(
                  image: kProfile4,
                  isDjamoAvatar: true,
                ),
              ],
            ),
          ),
          AppSpacing.m,
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
                AppSpacing.m,
                AppAvatar(
                  image: kProfile2,
                ),
                AppSpacing.m,
                AppAvatar(
                  image: kProfile3,
                ),
                AppSpacing.m,
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
