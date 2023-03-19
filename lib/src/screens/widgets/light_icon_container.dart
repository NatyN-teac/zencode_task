import 'package:flutter/material.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/screens/widgets/svg_to_Image.dart';

class LightIconContainer extends StatelessWidget {
  final double size;
  final SvgToImage imageWidget;
  const LightIconContainer({
    super.key,
    required this.imageWidget,
    this.size = 42,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: AppColors.lightPrimaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(child: imageWidget),
    );
  }
}
