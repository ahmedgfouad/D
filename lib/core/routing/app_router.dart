import 'package:docdoc/core/routing/routes.dart';
// import 'package:docdoc/features/login/view/login.dart';
// import 'package:docdoc/features/onboarding/onbarding.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.onBoardingScreen:
        // return MaterialPageRoute(
        //   builder: (_) => const OnBoardingScreen(),
        // );
      case AppRoutes.loginScreen:
        // return MaterialPageRoute(
        //   builder: (_) => const LogInScreen(),
        // );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defiend for ${settings.name}")),
          ),
        );
    }
  }
}
