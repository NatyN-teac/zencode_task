import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/screens/widgets/container_card.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    
    return ContainerCard(
        height: 42,
        child: TabBar(
          controller: tabController,
          automaticIndicatorColorAdjustment: true,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: AppColors.whiteColor,
          unselectedLabelColor: AppColors.unSelectedTabColor,
          unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 14),
          labelStyle: GoogleFonts.poppins(fontWeight: FontWeight.normal, fontSize: 14),
          indicator: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColors.lightPrimaryColor),
          tabs: const [
            Center(
              child: Text("Accounts"),
            ),
            Center(
              child: Text("Crypto"),
            ),
            Center(
              child: Text("NFT"),
            )
          ],
        ));
  }
}
