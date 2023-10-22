import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:jago_kisan/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  logIn() {
    Get.toNamed(Routes.SIGN_UP);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
