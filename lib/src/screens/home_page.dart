import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zencode_test/src/app_resource/app_colors.dart';
import 'package:zencode_test/src/app_resource/assets_resource.dart';
import 'package:zencode_test/src/models/data_source.dart';
import 'package:zencode_test/src/models/enums/card_type.dart';
import 'package:zencode_test/src/models/my_card.dart';
import 'package:zencode_test/src/screens/widgets/cards/fund_card_type.dart';
import 'package:zencode_test/src/screens/widgets/cards/normal_card_type.dart';
import 'package:zencode_test/src/screens/widgets/cards/unique_card_type.dart';
import 'package:zencode_test/src/screens/widgets/container_card.dart';
import 'package:zencode_test/src/screens/widgets/free_gift_component.dart';
import 'package:zencode_test/src/screens/widgets/my_bottom_navigation_bar.dart';
import 'package:zencode_test/src/screens/widgets/my_tab_bar.dart';
import 'package:zencode_test/src/screens/widgets/title_component.dart';
import 'package:zencode_test/src/screens/widgets/light_icon_container.dart';
import 'package:zencode_test/src/screens/widgets/svg_to_Image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNavigationBar(),
      backgroundColor: AppColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverLayoutBuilder(
            builder: (BuildContext context, constraints) {
              final isScrolled = constraints.scrollOffset > 0;
              final positionFix = constraints.scrollOffset > 100;
              return SliverAppBar(
                elevation: 0,
                titleSpacing: 0,
                pinned: true,
                backgroundColor: AppColors.primaryColor,
                expandedHeight: 250,
                collapsedHeight: 80,
                title: _buildTopHeaderComponent(),
                flexibleSpace: _buildFlexipleComponent(isScrolled, positionFix),
                bottom: _buildHeaderBottomComponent(),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.bgColor,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FreeGiftComponent(),
                  const SizedBox(height: 24),
                  MyTabBar(
                    tabController: tabController,
                  ),
                  const SizedBox(height: 8),
                  const TitleComponent(leftTitle: "My Cards", rightTitle: "Get a Card"),
                  _buildCardsListComponent()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardTypesComponentHelper(MyCard card) {
    switch (card.cardType) {
      case CardType.normal:
        return NormalCardType(myCard: card);
      case CardType.funds:
        return FundCardType(card: card);
      case CardType.unique:
        return UniqueCardType(card: card);
    }
  }

  PreferredSize _buildHeaderBottomComponent() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(30),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          height: 30,
          decoration: const BoxDecoration(
            color: AppColors.bgColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.bgColor,
                blurRadius: 0.0,
                spreadRadius: 1.0,
                offset: Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopHeaderComponent() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hi, John!",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.textWhiteColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          const LightIconContainer(
            imageWidget: SvgToImage(
              assetName: scanImageAsset,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const LightIconContainer(
            imageWidget: SvgToImage(
              assetName: headsetImageAsset,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlexipleComponent(bool scrolled, bool fixx) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0),
      padding: const EdgeInsets.only(bottom: 20.0, right: 15),
      child: FlexibleSpaceBar(
        stretchModes: const [StretchMode.zoomBackground],
        collapseMode: CollapseMode.pin,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            scrolled
                ? const SizedBox(
                    height: 0,
                    width: 0,
                  )
                : Text(
                    'Available Balance',
                    style: GoogleFonts.poppins(
                        fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColors.textWhiteColor),
                  ),
            fixx
                ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '₾ 4,562.52',
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: AppColors.textWhiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColors.whiteColor,
                    )
                  ])
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '₾ 4,562.52',
                        style: GoogleFonts.poppins(
                          fontSize: 32.0,
                          color: AppColors.textWhiteColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: AppColors.textWhiteColor,
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardsListComponent() {
    return Column(
      children: [
        ListView.separated(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: myCardsData.length,
          itemBuilder: (context, index) {
            return ContainerCard(
              borderRadius: 15,
              height: 118,
              child: _buildCardTypesComponentHelper(myCardsData[index]),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
        const TitleComponent(
          leftTitle: "Collecting Funds",
        ),
        ListView.separated(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: fundsCard.length,
          itemBuilder: (context, index) {
            return ContainerCard(height: 118, child: _buildCardTypesComponentHelper(fundsCard[index]));
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
        const TitleComponent(leftTitle: "Other", rightTitle: "Link"),
        ListView.separated(
          padding: const EdgeInsets.only(top: 0, bottom: 30),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: otherData.length,
          itemBuilder: (context, index) {
            return ContainerCard(
                borderRadius: 15, height: 118, child: _buildCardTypesComponentHelper(otherData[index]));
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
        ),
      ],
    );
  }
}
