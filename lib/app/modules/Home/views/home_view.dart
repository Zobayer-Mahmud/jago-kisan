import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jago_kisan/common/app_const/app_assets.dart';

import 'package:jago_kisan/common/app_const/app_dimes.dart';
import 'package:jago_kisan/common/widget/back_ground_card/back_ground_card.dart';
import 'package:jago_kisan/common/widget/text_widget/regulat_text_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BackGroundCard(
      child: ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          bottom: AppDimes.regularPadding,
          left: AppDimes.regularPadding,
          right: AppDimes.regularPadding,
        ),
        children: [
          const RegularTextWidget(
            text: "Welcome to",
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
          Image.asset(
            AppAssets.logo,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.height * 0.15,
          ),
          Image.asset(
            AppAssets.paddyField,
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const RegularTextWidget(
            text: "Without Agriculture we can’t survive on this planet",
            fontSize: AppDimes.FONT_SIZE_LEARGE,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppDimes.regularPadding,
          ),
          InkWell(
            onTap: controller.onGetStarted,
            child: Container(
              padding: const EdgeInsets.all(AppDimes.regularPadding),
              margin: const EdgeInsets.all(AppDimes.regularPadding),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.getStarted),
                ),
              ),
              child: const RegularTextWidget(
                text: "Get Started",
                color: Colors.black,
                fontSize: AppDimes.FONT_SIZE_LEARGE,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
