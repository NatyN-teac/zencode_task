import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/models/my_card.dart';
import 'package:zencode_test/src/screens/widgets/cards/card_logo.dart';

class UniqueCardType extends StatelessWidget {
  final MyCard card;
  const UniqueCardType({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardLogo(
                    assetName: card.headerImage,
                    hasToken: card.hasToken,
                  ),
                  // SizedBox(
                  //   height: 30,
                  //   width: 30,
                  //   child: card.hasToken ? Image.asset(card.headerImage) : SvgToImage(assetName: card.headerImage),
                  // ),
                  const SizedBox(width: 10),
                  Text(
                    card.title,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "TBGB12341213412345678",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.unSelectedTabColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(
                      text: "55.60 ",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColors.unSelectedTabColor,
                      ),
                    ),
                    TextSpan(
                      text: 'EUR',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.unSelectedTabColor,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "₾ 136.22",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: AppColors.unSelectedTabColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
