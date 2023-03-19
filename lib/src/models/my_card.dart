import 'package:zencode_test/src/models/enums/card_type.dart';

class MyCard {
  final String title;
  final String imageResource;
  final String headerImage;
  final CardType cardType;
  bool hasToken;

  MyCard({
    required this.title,
    required this.imageResource,
    required this.headerImage,
    required this.cardType,
    this.hasToken = false,
  });
}
