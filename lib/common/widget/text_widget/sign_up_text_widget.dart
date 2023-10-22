import 'package:flutter/material.dart';
import 'package:jago_kisan/common/app_const/app_colors.dart';
import 'package:jago_kisan/common/app_const/app_dimes.dart';

class SignUpTextWidget extends StatelessWidget {
  const SignUpTextWidget(
      {super.key,
      this.textEditingController,
      this.icon,
      this.hintText,
      this.isObscure = false});
  final TextEditingController? textEditingController;
  final IconData? icon;
  final String? hintText;
  final bool isObscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimes.regularPadding),
      child: TextFormField(
        obscureText: isObscure,
        controller: textEditingController,
        style: const TextStyle(color: Colors.black, fontSize: 16.0),
        decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: const Color(0xff31F920),
            ),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.themeColor),
                borderRadius:
                    BorderRadius.circular(15) // Set the border color to white
                ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.themeColor),
                borderRadius: BorderRadius.circular(
                    15) // Set the focused border color to white
                ),
            hintStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
