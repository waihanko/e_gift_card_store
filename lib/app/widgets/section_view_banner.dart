import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/dummy/dummy.dart';
import '../constants/resources/app_colors.dart';
import '../constants/resources/app_dimens.dart';

class SectionViewBanner extends StatefulWidget {
  const SectionViewBanner({Key? key}) : super(key: key);

  @override
  _SectionViewBannerState createState() => _SectionViewBannerState();
}

class _SectionViewBannerState extends State<SectionViewBanner> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(
              AppDimens.marginCardMedium2),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.secondaryColor,
          ),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: double.infinity,
              viewportFraction: 1,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items:bannerDummy
                .map(
                  (bannerItem) => InkWell(
                    onTap: () => {},
                    child: Image.asset(bannerItem, fit: BoxFit.cover, width: double.infinity, errorBuilder: (context, error, stackTrace) => SizedBox(),),
                  ),
            )
                .toList(),
          ),
        ),
      ),
    );
    // AppConstants.maxSpeed = announcementConfig.maxSpeed??5;
  }

}
