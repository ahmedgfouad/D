// ignore_for_file: file_names

import 'package:docdoc/core/theming/app_colors.dart';
import 'package:docdoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focuseBodrder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObsureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormFieldWidget({
    super.key,
    this.contentPadding,
    this.focuseBodrder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObsureText,
    this.suffixIcon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.lightergrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        focusedBorder: focuseBodrder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.font14LightGreyRegular,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColor ?? AppColors.morelightgrey,
      ),
      obscureText: isObsureText ?? false,
      style: AppStyles.font14DarkBlueMedium,
    );
  }
}
