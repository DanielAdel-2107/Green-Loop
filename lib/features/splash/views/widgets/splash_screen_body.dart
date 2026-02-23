import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:green_loop/core/utilies/assets/images/app_images.dart';
import 'package:green_loop/core/utilies/styles/app_text_styles.dart';
import 'package:green_loop/generated/locale_keys.g.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(AppImages.logo)
            .animate()
            .slideY(begin: -1, end: 0, duration: 900.ms),
        Text(
          LocaleKeys.Splash_green_loop.tr(),
          style: AppTextStyles.title36PrimaryColorW500,
        )
            .animate(
              delay: 1000.ms,
            )
            .rotate(begin: -1, end: 0, duration: 1200.ms)
            .fadeIn(),
      ],
    );
  }
}
