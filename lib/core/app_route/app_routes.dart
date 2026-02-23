import 'package:flutter/material.dart';
import 'package:green_loop/core/app_route/route_names.dart';
import 'package:green_loop/features/auth/sign_in/views/screens/sign_in_screen.dart';
import 'package:green_loop/features/auth/sign_up/views/screens/sign_up_screen.dart';
import 'package:green_loop/features/company/redeem/views/screens/redeem_screen.dart';
import 'package:green_loop/features/company/request_details/views/screens/request_details_screen.dart';
import 'package:green_loop/features/customer/categories/views/screens/categories_screen.dart';
import 'package:green_loop/features/customer/category_details/views/screens/category_details_screen.dart';
import 'package:green_loop/features/company/company_home/views/screens/company_home_screen.dart';
import 'package:green_loop/features/on_boarding/views/screens/on_boarding_screen.dart';
import 'package:green_loop/features/customer/pekia_price/views/screens/pekia_prise_screen.dart';
import 'package:green_loop/features/splash/views/screens/splash_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    RouteNames.splashScreen: (context) => const SplashScreen(),
    RouteNames.onBoardingScreen: (context) => const OnBoardingScreen(),
    RouteNames.signUpScreen: (context) => const SignUpScreen(),
    RouteNames.signInScreen: (context) => const SignInScreen(),
    RouteNames.userHomeScreen: (context) => const CategoriesScreen(),
    RouteNames.categoryDetailsScreen: (context) =>
        const CategoryDetailsScreen(),
    RouteNames.pekiaPriseScreen: (context) => const PekiaPriseScreen(),
    RouteNames.companyHomeScreen: (context) => const CompanyHomeScreen(),
    RouteNames.requestDetailsScreen: (context) => const RequestDetailsScreen(),
    RouteNames.redeemScreen: (context) => const RedeemScreen(),

  };
}
