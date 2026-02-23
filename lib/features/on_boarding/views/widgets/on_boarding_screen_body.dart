import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_loop/core/app_route/route_names.dart';
import 'package:green_loop/core/utilies/extensions/app_extensions.dart';
import 'package:green_loop/features/on_boarding/view_models/cubit/on_boarding_cubit.dart';
import 'package:green_loop/features/on_boarding/views/widgets/back_button.dart';
import 'package:green_loop/features/on_boarding/views/widgets/custom_page_view.builder.dart';
import 'package:green_loop/features/on_boarding/views/widgets/custom_smooth_page_indecator.dart';
import 'package:green_loop/features/on_boarding/views/widgets/green_space.dart';
import 'package:green_loop/features/on_boarding/views/widgets/next_button.dart';
import 'package:green_loop/features/on_boarding/views/widgets/skip_button.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: BlocBuilder<OnBoardingCubit, int>(
          builder: (context, state) {
            final cubit = context.read<OnBoardingCubit>();
            return Stack(
              children: [
                GreenSpace(),
                CustomPageViewBuilder(
                  controller: cubit.controller,
                  lottieList: cubit.lottieList,
                  titleList: cubit.titleList,
                  descriptionList: cubit.descriptionList,
                  onPageChanged: cubit.onPageChanged,
                ),
                SkipButton(),
                PreviousButton(
                  onPressed: state == 0 ? null : cubit.backPage,
                ),
                NextButton(
                  onPressed: state == 4
                      ? () {
                          context.pushReplacementScreen(
                            RouteNames.signInScreen,
                          );
                        }
                      : cubit.nextPage,
                ),
                CustomSmoothPageIndecator(
                  controller: cubit.controller,
                  count: cubit.lottieList.length,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
