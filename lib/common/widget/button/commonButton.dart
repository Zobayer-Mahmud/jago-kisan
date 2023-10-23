import 'package:flutter/material.dart';
import 'package:jago_kisan/common/app_const/app_colors.dart';

import '../../app_const/app_dimes.dart';
import '../text_widget/regulat_text_widget.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            color: AppColors.themeColor,
            borderRadius: BorderRadius.circular(15),
          ),
          clipBehavior: Clip.hardEdge,
          child: RegularTextWidget(
            text: title,
            color: Colors.black,
            textAlign: TextAlign.center,
            fontSize: AppDimes.FONT_SIZE_LEARGE,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
