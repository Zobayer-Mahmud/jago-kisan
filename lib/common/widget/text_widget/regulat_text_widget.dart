import 'package:flutter/material.dart';
import 'package:jago_kisan/common/app_const/app_colors.dart';

class RegularTextWidget extends StatelessWidget {
  const RegularTextWidget(
      {super.key,
      required this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.textAlign});
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize ?? 14,
        color: color ?? AppColors.fontColor,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
