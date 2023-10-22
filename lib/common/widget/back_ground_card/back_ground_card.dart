import 'package:flutter/material.dart';
import 'package:jago_kisan/common/app_const/app_assets.dart';

class BackGroundCard extends StatelessWidget {
  final Widget? child;
  const BackGroundCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppAssets.backGroundImage,
                ),
                fit: BoxFit.cover),
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
