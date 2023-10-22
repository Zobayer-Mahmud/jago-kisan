import 'package:get/get.dart';

import '../controllers/farming_card_controller.dart';

class FarmingCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FarmingCardController>(
      () => FarmingCardController(),
    );
  }
}
