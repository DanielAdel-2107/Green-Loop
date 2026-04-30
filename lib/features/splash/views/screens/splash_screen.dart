// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:green_loop/core/app_route/route_names.dart';
import 'package:green_loop/core/cache/cache_helper.dart';
import 'package:green_loop/core/di/dependancy_injection.dart';
import 'package:green_loop/core/notifications/notification_service.dart';
import 'package:green_loop/core/utilies/extensions/app_extensions.dart';
import 'package:green_loop/features/splash/views/widgets/splash_screen_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }

  void navigateToNextScreen() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        var role = getIt<CacheHelper>().getDataString(key: "userRole");
        if (role == "Customer") {
          getIt<NotificationService>().listenToRecycleRequests();
          context.pushReplacementScreen(RouteNames.userHomeScreen);
        } else if (role == "Company") {
          context.pushReplacementScreen(RouteNames.companyHomeScreen);
        } else {
          context.pushReplacementScreen(RouteNames.onBoardingScreen);
        }
      },
    );
  }
}
