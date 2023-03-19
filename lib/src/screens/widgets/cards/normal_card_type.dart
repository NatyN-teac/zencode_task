import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/models/my_card.dart';
import 'package:zencode_test/src/screens/widgets/cards/card_logo.dart';
import 'package:zencode_test/src/screens/widgets/svg_to_Image.dart';

class NormalCardType extends StatelessWidget {
  final MyCard myCard;
  const NormalCardType({
    super.key,
    required this.myCard,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardLogo(
                assetName: myCard.headerImage,
                hasToken: myCard.hasToken,
              ),
              const SizedBox(width: 10),
              Text(
                myCard.title,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 27,
                child: SvgToImage(assetName: myCard.imageResource),
              )
            ],
          ),
          const SizedBox(height: 8),
          myCard.hasToken
              ? Text(
                  "TBGB12341213412345678",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.unSelectedTabColor,
                  ),
                )
              : Text(
                  "₾ 2,562.52",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.unSelectedTabColor,
                  ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "**** 2124",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "06/25",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
