import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/widget/swiper/custom_swiper.dart';

class DiscoverBanner extends HookWidget{
  const DiscoverBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSwiper(
        bannerList: [
          "https://game-video.cdn.bcebos.com/game-video/2020-4/1587612624712/%E5%90%8C%E7%A8%8B%E6%97%85%E8%A1%8C.PNG",
          "https://game-video.cdn.bcebos.com/game-video/2020-4/1587612624712/%E5%90%8C%E7%A8%8B%E6%97%85%E8%A1%8C.PNG",
          "https://game-video.cdn.bcebos.com/game-video/2020-4/1587612624712/%E5%90%8C%E7%A8%8B%E6%97%85%E8%A1%8C.PNG",
          "https://game-video.cdn.bcebos.com/game-video/2020-4/1587612624712/%E5%90%8C%E7%A8%8B%E6%97%85%E8%A1%8C.PNG",
        ],
        paginationAligment: Alignment.bottomLeft,
        paginationMargin:  const EdgeInsets.all(30),
        item: (item) => Padding(
            padding: const EdgeInsets.all(18),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              child: Image.network(item, fit: BoxFit.cover,)
            ),
        ),
        paginationBuilder: const DotSwiperPaginationBuilder(
          color: Colors.grey,
          activeColor: Colors.white,
          size: 6,
          activeSize: 8),
        context: context
    );
  }

}