import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_loop/features/customer/buy_redeem/views/widgets/buy_redeem_screen_body.dart';
import 'package:green_loop/features/customer/categories/views/widgets/categories_screen_body.dart';
import 'package:green_loop/features/customer/pekia_price/views/screens/pekia_prise_screen.dart';
import 'package:green_loop/features/customer/profile/views/widgets/profile_screen_body.dart';
part 'bottom_navigation_bar_state.dart';


class BottomNavigationBarCubit extends Cubit<int> {
  BottomNavigationBarCubit() : super(0);
  //! change screen
  int _index = 2;
  int get index => _index;
  
  List<Widget> screens = [
    BuyRedeemScreenBody(),
    PekiaPriseScreen(),
    CategoriesScreenBody(),
    ProfileScreenBody(),
    CategoriesScreenBody(),
  ];
  void changeScreen(int index) {
    _index = index;
    emit(index);
  }
}
