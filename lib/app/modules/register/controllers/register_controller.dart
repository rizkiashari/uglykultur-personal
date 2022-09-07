import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool isPassword = false.obs;
  RxBool isConfirmPassword = false.obs;

  void tooglePassword() async {
    if (isPassword.isFalse) {
      isPassword.toggle();
      isPassword = true.obs;
    } else {
      isPassword.toggle();
      isPassword = false.obs;
    }
  }

  void toogleConfirmPassword() async {
    if (isConfirmPassword.isFalse) {
      isConfirmPassword.toggle();
      isConfirmPassword = true.obs;
    } else {
      isConfirmPassword.toggle();
      isConfirmPassword = false.obs;
    }
  }
}
