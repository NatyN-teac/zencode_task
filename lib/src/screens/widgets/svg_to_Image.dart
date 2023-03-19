// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgToImage extends StatelessWidget {
  final String assetName;
  const SvgToImage({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetName);
  }
}
