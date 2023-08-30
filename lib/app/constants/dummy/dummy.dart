import 'package:e_gift_card_store/app/constants/dummy/vos/gift_card_item_vo.dart';
import '../resources/app_images.dart';
import 'vos/gift_card_category_vo.dart';
import 'vos/review_item_vo.dart';

List<String> orderStatus = ["Pending", "Sending", "Completed", "Refunded"];

List<String> detailTabMenu = [
  "Description",
  "Instruction",
  "Reviews",
  "Related"
];

List<GiftCardCategoryVo> giftCardCategoDummy = [
  GiftCardCategoryVo("Mobile Game Cards", AppAssets.mobileGameCardIcon, "28"),
  GiftCardCategoryVo("Game Cards", AppAssets.gameCardsIcon, "28"),
  GiftCardCategoryVo("Payment Cards", AppAssets.paymentCardIcon, "128"),
  GiftCardCategoryVo("Gift Cards", AppAssets.giftCardsIcon, "50"),
  GiftCardCategoryVo("Game Consoles", AppAssets.gameConsoleIcon, "4"),
  GiftCardCategoryVo("Game CD-Keys", AppAssets.cdKeyIcon, "128"),
  GiftCardCategoryVo("Video Streaming", AppAssets.videoStreamingIcon, "7"),
  GiftCardCategoryVo("Music", AppAssets.musicIcon, "16"),
  GiftCardCategoryVo("Shopping", AppAssets.shoppingIcon, "22"),
  GiftCardCategoryVo("Tools", AppAssets.toolsIcon, "40"),
  GiftCardCategoryVo("Software", AppAssets.softwareIcon, "6"),
  GiftCardCategoryVo("Social App", AppAssets.socialIcon, "32"),
  GiftCardCategoryVo("Freebies Codes", AppAssets.freebiesCodeIcon, "11"),
  GiftCardCategoryVo("Subscription", AppAssets.subscriptionIcon, "8"),
];

List<GiftCardCategoryVo> gameTopUpCategoDummy = [
  GiftCardCategoryVo("Mobile Game Top-Up", AppAssets.mobileTopUpIcon, "126"),
  GiftCardCategoryVo("Game Direct Top-UP", AppAssets.directTopUpIcon, "28"),
  GiftCardCategoryVo(
      "China Direct Top-Up", AppAssets.chinaDirectTopUpIcon, "0"),
  GiftCardCategoryVo("Video Streaming", AppAssets.videoStreamingIcon, "18"),
  GiftCardCategoryVo("Entertainment", AppAssets.entertainmentIcon, "12"),
  GiftCardCategoryVo("Live Streaming", AppAssets.liveStreamingIcon, "2"),
];

List<String> bannerDummyList = [
  "assets/images/banner_dummy/banner_1.webp",
  "assets/images/banner_dummy/banner_2.webp",
  "assets/images/banner_dummy/banner_3.webp"
];

List<GiftCardItemVo> newsAndPromotionDummyList = [
  GiftCardItemVo(
    "Steam Summer Sale 2023 on SEAGM",
    "assets/images/news_and_promotion_dummy/promotion_summer_sales.webp",
  ),
  GiftCardItemVo(
    "Honkai: Star Rail – a new take on tactical JRPG!",
    "assets/images/news_and_promotion_dummy/promotion_star_rails.webp",
  ),
  GiftCardItemVo(
    "PlayStation Summer Sale 2023",
    "assets/images/news_and_promotion_dummy/promotion_play_station.webp",
  ),
  GiftCardItemVo(
    r"What the Extra $20 Deluxe Upgrade Gets You in Star Wars Jedi: Survivor",
    "assets/images/news_and_promotion_dummy/promotion_jed.webp",
  ),
  GiftCardItemVo(
    "Call of Duty Mobile Season 4 : VEILED UPRISING",
    "assets/images/news_and_promotion_dummy/promotion_call_of_duty.webp",
  ),
];

Map<String, List<GiftCardItemVo>> shoppingCartDummyList = {
  "Steam Summer Sale Card": [
    GiftCardItemVo(r"Steam Summer Sale Card $200",
        "assets/images/news_and_promotion_dummy/promotion_summer_sales.webp"),
    GiftCardItemVo(r"Steam Summer Sale Card $100",
        "assets/images/news_and_promotion_dummy/promotion_summer_sales.webp"),
  ],
  "PlayStation Summer Sale": [
    GiftCardItemVo(
      r"Honkai: Star Rail $10",
      "assets/images/news_and_promotion_dummy/promotion_star_rails.webp",
    ),
    GiftCardItemVo(
      r"Honkai: Star Rail $50",
      "assets/images/news_and_promotion_dummy/promotion_star_rails.webp",
    ),
    GiftCardItemVo(
      r"Honkai: Star Rail $5",
      "assets/images/news_and_promotion_dummy/promotion_star_rails.webp",
    ),
  ],
  "ITUNES GIFT CARD (US)": [
    GiftCardItemVo("ITUNES GIFT CARD (US)",
        "assets/images/gift_card_dummy/gift_card_itune.webp"),
  ],
};

List<GiftCardItemVo> topUpCardDummyList = [
  GiftCardItemVo(
      "MOBILE LEGEND", "assets/images/top_up_dummy/top_up_mobile_legend.webp"),
  GiftCardItemVo(
      "FORZA HORIZON 5", "assets/images/top_up_dummy/top_up_forza_horizon.webp"),
  GiftCardItemVo("EGGY PARTY", "assets/images/top_up_dummy/top_up_eggy_go.webp"),
  GiftCardItemVo("CS GO", "assets/images/top_up_dummy/top_up_cs_go.webp"),
  GiftCardItemVo(
      "CALL OF DUTY", "assets/images/top_up_dummy/top_up_call_of_duty.webp"),
];

List<GiftCardItemVo> gameCardDummyList = [
  GiftCardItemVo("DIABLO 4 (PC) - STANDARD EDITION",
      "assets/images/gift_card_dummy/gift_card_diablo_4.webp"),
  GiftCardItemVo("Binance Gift Cards",
      "assets/images/gift_card_dummy/gift_card_binance.webp"),
  GiftCardItemVo("PUBG MOBILE UC REDEEM CODE (GLOBAL)",
      "assets/images/gift_card_dummy/gift_card_pubg_uc.webp"),
  GiftCardItemVo("VISA GIFT CARD (US)",
      "assets/images/gift_card_dummy/gift_card_visa_gift_card.webp"),
  GiftCardItemVo("ITUNES GIFT CARD (US)",
      "assets/images/gift_card_dummy/gift_card_itune.webp"),
  GiftCardItemVo("VISA GIFT CARD (CA)",
      "assets/images/gift_card_dummy/gift_card_my_prepaid_visa.webp"),
  GiftCardItemVo("Mobile Game Cards",
      "assets/images/gift_card_dummy/gift_card_binance.webp"),
  GiftCardItemVo("Mobile Game Cards",
      "assets/images/gift_card_dummy/gift_card_binance.webp"),
  GiftCardItemVo("Mobile Game Cards",
      "assets/images/gift_card_dummy/gift_card_binance.webp"),
  GiftCardItemVo("Mobile Game Cards",
      "assets/images/gift_card_dummy/gift_card_binance.webp"),
  GiftCardItemVo("Mobile Game Cards",
      "assets/images/gift_card_dummy/gift_card_binance.webp"),
];

List<GiftCardItemVo> specialDealDummyList = [
  GiftCardItemVo(
      "BINANCE", "assets/images/gift_card_dummy/gift_card_binance.webp"),
  GiftCardItemVo(
      "MOBILE LEGEND", "assets/images/top_up_dummy/top_up_mobile_legend.webp"),
  GiftCardItemVo(
      "FORZA HORIZON 5", "assets/images/top_up_dummy/top_up_forza_horizon.webp"),
  GiftCardItemVo("EGGY PARTY", "assets/images/top_up_dummy/top_up_eggy_go.webp"),
  GiftCardItemVo("CS GO", "assets/images/top_up_dummy/top_up_cs_go.webp"),
  GiftCardItemVo(
      "CALL OF DUTY", "assets/images/top_up_dummy/top_up_call_of_duty.webp"),
];

List<ReviewItemVo> reviewDummyList = [
  ReviewItemVo('User 1', AppAssets.kProfilePic, 4.5,
      'Great gift card! It had a wide range of options.', "12/11/2019"),
  ReviewItemVo(
      'User 2',
      AppAssets.kProfilePic,
      3.8,
      'The gift card was useful, but I wish there were more choices.',
      "12/11/2023"),
  ReviewItemVo('User 3', AppAssets.kProfilePic, 5.0,
      'This gift card made my day. Thank you!', "1/11/2023"),
  ReviewItemVo('User 4', AppAssets.kProfilePic, 4.2,
      'The gift card experience was satisfactory.', "6/10/2023"),
  // Continue adding more review items...
  ReviewItemVo('User 28', AppAssets.kProfilePic, 3.5,
      'The gift card met my expectations.', "5/10/2023"),
  ReviewItemVo('User 29', AppAssets.kProfilePic, 4.8,
      'I absolutely loved the gift card choices!', "4/10/2023"),
  ReviewItemVo('User 30', AppAssets.kProfilePic, 2.0,
      'The gift card options were limited.', "3/10/2023"),
  ReviewItemVo('User 1', AppAssets.kProfilePic, 4.5,
      'Great gift card! It had a wide range of options.', "3/10/2023"),
  ReviewItemVo(
    'User 2',
    AppAssets.kProfilePic,
    3.8,
    'The gift card was useful, but I wish there were more choices.',
    "1/10/2023",
  ),
  ReviewItemVo('User 3', AppAssets.kProfilePic, 5.0,
      'This gift card made my day. Thank you!', "6/9/2022"),
  ReviewItemVo('User 4', AppAssets.kProfilePic, 4.2,
      'The gift card experience was satisfactory.', "6/8/2022"),
  // Continue adding more review items...
  ReviewItemVo('User 28', AppAssets.kProfilePic, 3.5,
      'The gift card met my expectations.', "1/7/2022"),
  ReviewItemVo('User 29', AppAssets.kProfilePic, 4.8,
      'I absolutely loved the gift card choices!', "11/6/2022"),
  ReviewItemVo('User 30', AppAssets.kProfilePic, 2.0,
      'The gift card options were limited.', "7/5/2022"),
];
