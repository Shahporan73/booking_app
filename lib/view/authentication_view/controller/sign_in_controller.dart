import 'package:get/get.dart';

class SignInController extends GetxController{
  var isLoading = false.obs;
  var isChecked = false.obs;
  // Visibility state for password fields
  RxBool isPasswordVisible = false.obs;
  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}