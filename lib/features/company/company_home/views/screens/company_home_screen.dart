import 'package:flutter/material.dart';
import 'package:green_loop/core/app_route/route_names.dart';
import 'package:green_loop/core/utilies/colors/app_colors.dart';
import 'package:green_loop/core/utilies/extensions/app_extensions.dart';
import 'package:green_loop/features/company/company_home/views/widgets/company_home_screen_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_loop/features/company/company_home/view_models/cubit/get_recycle_request_cubit.dart';

class CompanyHomeScreen extends StatelessWidget {
  const CompanyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetRecycleRequestCubit(),
      child:  Scaffold(
        body: CompanyHomeScreenBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          onPressed: () {
            context.pushScreen(RouteNames.redeemScreen);
          },
          child: Icon(Icons.redeem_rounded),
        ),
      ),
    );
  }
}
