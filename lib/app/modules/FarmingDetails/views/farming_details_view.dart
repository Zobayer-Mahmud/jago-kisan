import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/farming_details_controller.dart';

class FarmingDetailsView extends GetView<FarmingDetailsController> {
  const FarmingDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FarmingDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FarmingDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
