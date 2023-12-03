import 'package:docdoc/core/theming/app_styles.dart';
import 'package:docdoc/core/theming/font_weght_helper.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsTextWidget extends StatelessWidget {
  const TermsAndConditionsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: "By logging, you agree to our ",
          style: AppStyles.font13greyRegular,
        ),
        TextSpan(
          text: "Terms & Conditions  ",
          style: AppStyles.font13DarkBlueRegular
              .copyWith(fontWeight: FontWeightHelper.medium),
        ),
        TextSpan(
          text: "and ",
          style: AppStyles.font13greyRegular.copyWith(height: 2),
        ),
        TextSpan(
          text: "Privacy Policy ",
          style: AppStyles.font13DarkBlueRegular
              .copyWith(fontWeight: FontWeightHelper.medium, height: 1.5),
        ),
      ]),
    );
  }
}
