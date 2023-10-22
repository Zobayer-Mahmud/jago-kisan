import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jago_kisan/common/app_const/app_assets.dart';
import 'package:jago_kisan/common/app_const/app_colors.dart';
import 'package:jago_kisan/common/app_const/app_dimes.dart';
import 'package:jago_kisan/common/widget/back_ground_card/back_ground_card.dart';
import 'package:jago_kisan/common/widget/icon_widget/icon_widget.dart';
import 'package:jago_kisan/common/widget/text_form_field_widget.dart';
import 'package:jago_kisan/common/widget/text_widget/regulat_text_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
          Image.asset(
            AppAssets.logo,
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.height * 0.15,
          ),
          Container(
            padding: const EdgeInsets.all(AppDimes.regularPadding),
            margin: const EdgeInsets.all(AppDimes.regularPadding),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.loginBackGround),
              ),
            ),
            child: Column(
              children: [
                TextFormFieldWidget(
                  textEditingController: controller.emailController,
                  hintText: "Enter your email",
                  icon: Icons.person,
                ),
                TextFormFieldWidget(
                  textEditingController: controller.passWordController,
                  hintText: "Password",
                  isObscure: true,
                  icon: Icons.person,
                ),
                const Align(
                  alignment: Alignment.topRight,
                  child: RegularTextWidget(
                    text: "Forgot password?",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppDimes.FONT_SIZE_LEARGE),
                const RegularTextWidget(
                  text: "Or Sign In Using",
                  color: Colors.white,
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconWidget(iconImageUrl: AppAssets.fb),
                    SizedBox(width: 10),
                    IconWidget(iconImageUrl: AppAssets.google),
                    SizedBox(width: 10),
                    IconWidget(iconImageUrl: AppAssets.twitter),
                  ],
                )
              ],
            ),
          ),
          Center(
            child: InkWell(
              onTap: controller.logIn,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: AppColors.themeColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.hardEdge,
                child: const RegularTextWidget(
                  text: "LOGIN",
                  color: Colors.black,
                  textAlign: TextAlign.center,
                  fontSize: AppDimes.FONT_SIZE_LEARGE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
