import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';

class TitleComponent extends StatelessWidget {
  final String leftTitle;
  final String? rightTitle;
  const TitleComponent({super.key, required this.leftTitle, this.rightTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftTitle,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.blackColor),
          ),
          rightTitle != null && rightTitle!.isNotEmpty
              ? Text(
                  "+ $rightTitle",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.lightPrimaryColor),
                )
              : const Text(""),
        ],
      ),
    );
  }
}
