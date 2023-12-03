import 'package:docdoc/core/helpers/spaceing.dart';
import 'package:docdoc/core/theming/app_styles.dart';
import 'package:docdoc/core/widgets/App_text_form_field_widget.dart';
import 'package:docdoc/core/widgets/app_text_button_widget.dart';
import 'package:docdoc/features/login/view/widgets/already_have_account_text_widget.dart';
import 'package:docdoc/features/login/view/widgets/terms_andcondition_text_idget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();

  bool isObsucure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: AppStyles.font24BlueBold,
                ),
                verticalSpace(18),
                Text(
                  "We're  excited  to  have  you  back,  can't  wait  to  see  what  you've  been  up  to  since  you  last  logged in.",
                  style: AppStyles.font14GreyRegular.copyWith(height: 1.5),
                ),
                verticalSpace(50),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormFieldWidget(
                        hintText: 'email',
                      ),
                      verticalSpace(16),
                      AppTextFormFieldWidget(
                        hintText: 'password',
                        isObsureText: isObsucure,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObsucure = !isObsucure;
                            });
                          },
                          child: Icon(
                            isObsucure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(25),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'forget password',
                    style: AppStyles.font12BlueRegular,
                  ),
                ),
                verticalSpace(41),
                AppTextButtonWidget(
                  butttonText: 'Login',
                  textStyle: AppStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),
                verticalSpace(16),
                const TermsAndConditionsTextWidget(),
                verticalSpace(60),
                const AlreadyHaveAccountTextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
