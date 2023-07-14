import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/http/bean/home_page_bean.dart';
import 'package:new_flutter/widget/swiper/custom_swiper.dart';

class DiscoverBanner extends StatefulWidget {
  List<Banners>? banners = [];


  DiscoverBanner(this.banners, {super.key});

  @override
  State<StatefulWidget> createState() => DiscoverBannerState();
}

class DiscoverBannerState extends State<DiscoverBanner> {
  List<Banners> banners = [];

  @override
  Widget build(BuildContext context) {
    return CustomSwiper(
        bannerList:banners.map((e) => e.pic ?? "").toList(),
        paginationAligment: Alignment.bottomLeft,
        paginationMargin: const EdgeInsets.all(30),
        item: (item) => Padding(
              padding: const EdgeInsets.all(18),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                  )),
            ),
        paginationBuilder: const DotSwiperPaginationBuilder(
            color: Colors.grey,
            activeColor: Colors.white,
            size: 6,
            activeSize: 8),
        context: context);
  }


  @override
  void didUpdateWidget(DiscoverBanner oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      banners = widget.banners ?? [];
    });
  }

}
