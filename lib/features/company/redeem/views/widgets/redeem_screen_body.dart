import 'package:flutter/material.dart';
import 'package:green_loop/core/components/custom_icon_button.dart';
import 'package:green_loop/core/utilies/extensions/app_extensions.dart';
import 'package:green_loop/features/company/redeem/views/widgets/redeem_items_title.dart';
import 'package:green_loop/features/company/redeem/views/widgets/redeems_list_view.dart';
import 'package:green_loop/features/customer/categories/views/widgets/triple_bottom_wave_painter.dart';

class RedeemScreenBody extends StatelessWidget {
  const RedeemScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: context.height * 0.2,
              width: double.infinity,
              child: CustomPaint(
                painter: TripleBottomWavePainter(),
              ),
            ),
            const RedeemItemsTitle(),
            const RedeemsListView(),
          ],
        ),
        Positioned(
          top: context.height * 0.05,
          left: context.width * 0.02,
          child: CustomIconButton(
            icon: Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            onPressed: () {
              context.popScreen();
            },
          ),
        ),
      ],
    );
  }
}
