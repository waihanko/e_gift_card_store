import 'package:e_gift_card_store/app/constants/resources/app_images.dart';

List<GiftCardCatego> giftCardCategoDummy = [
  GiftCardCatego("Mobile Game Cards",AppImages.mobileGameCardIcon,"28"),
  GiftCardCatego("Game Cards",AppImages.gameCardsIcon,"28"),
  GiftCardCatego("Payment Cards",AppImages.paymentCardIcon,"128"),
  GiftCardCatego("Gift Cards",AppImages.giftCardsIcon,"50"),
  GiftCardCatego("Game Consoles",AppImages.gameConsoleIcon,"4"),
  GiftCardCatego("Game CD-Keys",AppImages.cdKeyIcon,"128"),
  GiftCardCatego("Video Streaming",AppImages.videoStreamingIcon,"7"),
  GiftCardCatego("Music",AppImages.musicIcon,"16"),
  GiftCardCatego("Shopping",AppImages.shoppingIcon,"22"),
  GiftCardCatego("Tools",AppImages.toolsIcon,"40"),
  GiftCardCatego("Software",AppImages.softwareIcon,"6"),
  GiftCardCatego("Social App",AppImages.socialIcon,"32"),
  GiftCardCatego("Freebies Codes",AppImages.freebiesCodeIcon,"11"),
  GiftCardCatego("Subscription",AppImages.subscriptionIcon,"8"),
];

List<GiftCardCatego> gameTopUpCategoDummy = [
  GiftCardCatego("Mobile Game Top-Up",AppImages.mobileTopUpIcon,"126"),
  GiftCardCatego("Game Direct Top-UP",AppImages.directTopUpIcon,"28"),
  GiftCardCatego("China Direct Top-Up",AppImages.chinaDirectTopUpIcon,"0"),
  GiftCardCatego("Video Streaming",AppImages.videoStreamingIcon,"18"),
  GiftCardCatego("Entertainment",AppImages.entertainmentIcon,"12"),
  GiftCardCatego("Live Streaming",AppImages.liveStreamingIcon,"2"),
];


class GiftCardCatego{
  final String name;
  final String iconLink;
  final String totalNumber;

  GiftCardCatego(this.name, this.iconLink, this.totalNumber);
}