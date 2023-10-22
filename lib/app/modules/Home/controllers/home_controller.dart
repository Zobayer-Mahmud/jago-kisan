import 'package:get/get.dart';
import 'package:jago_kisan/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

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
  onGetStarted() {
    Get.toNamed(Routes.LOGIN);
  }
}
