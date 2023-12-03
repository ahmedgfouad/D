import 'package:docdoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountTextWidget extends StatelessWidget {
  const AlreadyHaveAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: "Already have an account ? ",
          style: AppStyles.font13DarkBlueRegular,
        ),
        TextSpan(text: "Sign Up ", style: AppStyles.font13BlueSemiBld)
      ]),
    );
  }
}
