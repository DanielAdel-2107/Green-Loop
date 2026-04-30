import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:green_loop/core/components/custom_text_form_field_with_title.dart';
import 'package:green_loop/core/utilies/extensions/app_extensions.dart';
import 'package:green_loop/generated/locale_keys.g.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.addressController,
    required this.phoneController,
    required this.voucher,
  });
  final TextEditingController nameController,
      emailController,
      addressController,
      phoneController;
  final String voucher;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.width * 0.03,
        right: context.width * 0.03,
        top: context.height * 0.03,
      ),
      child: Column(
        spacing: context.height * 0.01,
        children: [
          CustomTextFormFieldWithTitle(
            title: LocaleKeys.profile_textField_name.tr(),
            hintText: nameController.text,
            controller: nameController,
          ),
          CustomTextFormFieldWithTitle(
            title: LocaleKeys.profile_textField_email.tr(),
            hintText: emailController.text,
            controller: emailController,
            enable: false,
          ),
          CustomTextFormFieldWithTitle(
            title: LocaleKeys.profile_textField_address.tr(),
            hintText: addressController.text,
            controller: addressController,
          ),
          CustomTextFormFieldWithTitle(
            title: LocaleKeys.profile_textField_phone.tr(),
            hintText: phoneController.text,
            controller: phoneController,
          ),
          CustomTextFormFieldWithTitle(
            title: LocaleKeys.profile_textField_voucher.tr(),
            hintText: voucher,
            enable: false,
          ),
        ],
      ),
    );
  }
}
