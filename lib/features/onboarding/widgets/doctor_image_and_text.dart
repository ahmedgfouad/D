import 'package:docdoc/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: Stack(
        children: [
          Image.asset("assets/images/backgrounddoctor.png"),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [.14, .4],
              ),
            ),
            child: Image.asset("assets/images/doctor.png"),
          ),
          Positioned(
            bottom: 10.h,
            left: 10,
            right: 10,
            child: Text(
              "Best Doctor\nAppointment App",
              style: AppStyles.font32BlueBold.copyWith(height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
