import 'package:flutter/material.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';

class ContainerCard extends StatelessWidget {
  final Widget child;
  final double height;
  final double borderRadius;
  const ContainerCard({super.key, required this.child, required this.height, this.borderRadius = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            offset: const Offset(0, 0),
            spreadRadius: 0,
            color: AppColors.blackColor.withOpacity(0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
