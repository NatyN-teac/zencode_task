import 'package:flutter/material.dart';
import 'package:zencode_test/src/screens/widgets/svg_to_Image.dart';

class CardLogo extends StatelessWidget {
  final String assetName;
  final bool hasToken;
  const CardLogo({super.key, required this.assetName, this.hasToken = false});

  @override
  Widget build(BuildContext context) {
    return hasToken
        ? SizedBox(height: 30, width: 30, child: Image.asset(assetName))
        : SizedBox(
            height: 30,
            width: 30,
            child: SvgToImage(assetName: assetName),
          );
  }
}
