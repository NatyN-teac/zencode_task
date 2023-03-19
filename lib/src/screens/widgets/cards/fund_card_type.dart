import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/app_resource/assets_resource.dart';
import 'package:zencode_test/src/models/my_card.dart';
import 'package:zencode_test/src/screens/widgets/cards/card_logo.dart';

class FundCardType extends StatelessWidget {
  final MyCard card;
  const FundCardType({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardLogo(
                      assetName: card.headerImage,
                      hasToken: card.hasToken,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          card.title,
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Donations(50)",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: AppColors.lightBodyCoor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: '€ 562.52/',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: AppColors.unSelectedTabColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: '€800.00',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: AppColors.unSelectedTabColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 130,
            child: Image.asset(
              bg,
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
              opacity: const AlwaysStoppedAnimation(.4),
            ),
          )
        ],
      ),
    );
  }
}
