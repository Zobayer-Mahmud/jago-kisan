import 'package:flutter/material.dart';
import 'package:jago_kisan/common/app_const/app_dimes.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
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
        style: const TextStyle(color: Colors.white, fontSize: 16.0),
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.white,
            ),
            hintText: hintText,

            // focusedBorder:
            //     OutlineInputBorder(borderSide: BorderSide(color: Colors.white),),
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
