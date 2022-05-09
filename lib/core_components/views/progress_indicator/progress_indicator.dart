import 'package:app_ui/design_tokens/colors/neutral_colors.dart';
import 'package:flutter/material.dart';

class AppProgressIndicator extends StatelessWidget {
  const AppProgressIndicator({Key? key, this.level = 0.3, this.height = 8, this.borderColor = NeutralColors.formBordersColor, this.borderWidth = 1, this.progressColor = const Color(0xff0C29FF), this.borderRadius = 6}) : super(key: key);

  final double level;
  final double height;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: LinearProgressIndicator(
          value: level,
          backgroundColor: Colors.transparent,
          valueColor: AlwaysStoppedAnimation<Color>(
            progressColor,
          ),
        ),
      ),
    );
  }
}
