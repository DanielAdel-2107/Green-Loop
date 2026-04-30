import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:green_loop/app/my_app.dart';

void showCustomDialog({
  required String title,
  required String description,
  required DialogType dialogType,
  Function()? btnOkOnPress,
  Function()? btnCancelOnPress,
}) {
  AwesomeDialog(
    context: navigatorKey.currentState!.context,
    dialogType: dialogType,
    animType: AnimType.bottomSlide,
    title: title,
    desc: description,
    btnCancelOnPress: btnCancelOnPress,
    btnOkOnPress: btnOkOnPress ?? () {},
  ).show();
}
