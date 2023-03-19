import 'package:zencode_test/src/app_resource/assets_resource.dart';
import 'package:zencode_test/src/models/enums/card_type.dart';
import 'package:zencode_test/src/models/my_card.dart';

List<MyCard> myCardsData = [
  MyCard(
      title: "My Mastercard in GEL", imageResource: masterCardIcon, headerImage: flagUKIcon, cardType: CardType.normal),
  MyCard(title: "My VISA in EUR", imageResource: visaCardIcon, headerImage: euroIcon, cardType: CardType.normal),
];
List<MyCard> fundsCard = [
  MyCard(title: "My Startup Donations", imageResource: rocketIcon, headerImage: rocketIcon, cardType: CardType.funds),
];
List<MyCard> otherData = [
  MyCard(
      title: "My TBC Card",
      imageResource: masterCardIcon,
      headerImage: tbcIcon,
      cardType: CardType.normal,
      hasToken: true),
  MyCard(
      title: "My BOG Card",
      imageResource: visaCardIcon,
      headerImage: dogIcon,
      cardType: CardType.normal,
      hasToken: true),
  MyCard(
      title: "My TBC Account",
      imageResource: visaCardIcon,
      headerImage: tbcIcon,
      cardType: CardType.unique,
      hasToken: true),
];
