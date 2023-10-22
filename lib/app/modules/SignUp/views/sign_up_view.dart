import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jago_kisan/common/app_const/app_dimes.dart';
import 'package:jago_kisan/common/widget/back_ground_card/back_ground_card.dart';
import 'package:jago_kisan/common/widget/text_widget/regulat_text_widget.dart';
import 'package:jago_kisan/common/widget/text_widget/sign_up_text_widget.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
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
          RegularTextWidget(
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            text: 'Create Account',
            color: Colors.black,
          ),
          SizedBox(height: AppDimes.regularPadding),
          SignUpTextWidget(
            textEditingController: controller.fullName,
            hintText: "Full Name",
            icon: Icons.person,
          ),
          SizedBox(height: AppDimes.regularPadding),
          SignUpTextWidget(
            textEditingController: controller.fullName,
            hintText: "Email Address",
            icon: Icons.person,
          ),
          SizedBox(height: AppDimes.regularPadding),
          SignUpTextWidget(
            textEditingController: controller.fullName,
            hintText: "Phone Number",
            icon: Icons.person,
          ),
          SizedBox(height: AppDimes.regularPadding),
          SignUpTextWidget(
            textEditingController: controller.fullName,
            hintText: "Password",
            icon: Icons.person,
          ),
          SizedBox(height: AppDimes.regularPadding),
          SignUpTextWidget(
            textEditingController: controller.fullName,
            hintText: "Confirm Password",
            icon: Icons.person,
          ),
          SizedBox(height: AppDimes.regularPadding),
        ],
      ),
    );
  }
}
