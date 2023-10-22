import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/farming_card_controller.dart';

class FarmingCardView extends GetView<FarmingCardController> {
  const FarmingCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FarmingCardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FarmingCardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
