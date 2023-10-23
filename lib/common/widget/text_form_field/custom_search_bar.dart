import 'package:flutter/material.dart';
import 'package:jago_kisan/common/app_const/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onCancel,
    this.suffixFunction,
    this.hideFilterButton = false,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final bool hideFilterButton;
  final void Function()? onCancel;
  final void Function()? suffixFunction;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          IconButton(
            padding: const EdgeInsets.all(20),
            onPressed: () {},
            icon: Icon(prefixIcon ?? Icons.search),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: AppColors.themeColor,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: InputBorder.none,
              ),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              onChanged: onChanged,
            ),
          ),
          onCancel != null && controller?.text.isNotEmpty == true
              ? IconButton(
                  onPressed: onCancel,
                  icon: const Icon(Icons.cancel),
                )
              : Container(),
          !hideFilterButton
              ? Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  child: IconButton(
                    padding: const EdgeInsets.all(10),
                    onPressed: suffixFunction,
                    icon: Icon(suffixIcon ?? Icons.filter_list_rounded),
                  ),
                )
              : const SizedBox.shrink(),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
