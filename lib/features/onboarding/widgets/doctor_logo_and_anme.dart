import 'package:docdoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogoAndName extends StatelessWidget {
  const DoctorLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svgs/logo.svg",
          width: 30.w,
        ),
        SizedBox(width: 8.w),
        Text(
          "DocDoc",
          style: AppStyles.font24BlackBold,
        ),
      ],
    );
  }
}
