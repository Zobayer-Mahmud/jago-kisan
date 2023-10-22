import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() async {
    print("initial bindings");

    await Get.putAsync(() => SharedPreferences.getInstance(), permanent: true);
  }
}
