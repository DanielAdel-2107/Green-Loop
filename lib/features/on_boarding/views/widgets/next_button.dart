import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:green_loop/core/components/custom_elevated_button.dart';
import 'package:green_loop/core/utilies/styles/app_text_styles.dart';
import 'package:green_loop/generated/locale_keys.g.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    this.onPressed,
  });
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 10,
      child: CustomElevatedButton(
        name: LocaleKeys.onboarding_buttons_next.tr(),
        onPressed: onPressed,
        backgroundColor: Colors.white,
        textStyle: AppTextStyles.title18PrimaryColorW500,
      ),
    );
  }
}
