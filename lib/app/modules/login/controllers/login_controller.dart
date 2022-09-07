import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isPassword = false.obs;

  void tooglePassword() async {
    if (isPassword.isFalse) {
      isPassword.toggle();
      isPassword = true.obs;
    } else {
      isPassword.toggle();
      isPassword = false.obs;
    }
  }
}
