import 'package:get/get.dart';

import '../controllers/farming_details_controller.dart';

class FarmingDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FarmingDetailsController>(
      () => FarmingDetailsController(),
    );
  }
}
