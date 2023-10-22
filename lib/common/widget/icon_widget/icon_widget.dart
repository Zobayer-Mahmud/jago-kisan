import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.iconImageUrl});
  final String iconImageUrl;
  @override
  Widget build(BuildContext context) {
    return Image.asset(iconImageUrl);
  }
}
