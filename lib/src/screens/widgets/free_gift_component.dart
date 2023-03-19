import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/app_resource/assets_resource.dart';
import 'package:zencode_test/src/screens/widgets/container_card.dart';
import 'package:zencode_test/src/screens/widgets/light_icon_container.dart';
import 'package:zencode_test/src/screens/widgets/svg_to_Image.dart';

class FreeGiftComponent extends StatelessWidget {
  const FreeGiftComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return ContainerCard(
      height: 67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: width * 0.17,
            decoration: const BoxDecoration(
              color: AppColors.lightPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: const LightIconContainer(
                imageWidget: SvgToImage(
              assetName: giftIcon,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Zero free first purchase",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'For new users ',
                        style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextSpan(
                        text: 'Learn more',
                        style: GoogleFonts.poppins(
                            color: AppColors.lightPrimaryColor,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.close,
              color: AppColors.iconsGrayColor,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
