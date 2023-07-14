import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/http/dio_manager.dart';
import 'package:new_flutter/http/services_url.dart';
import 'package:new_flutter/pages/discover/discover_banner.dart';
import 'package:new_flutter/pages/discover/discover_top_bar.dart';
import 'package:new_flutter/pages/discover/discover_tabs.dart';
import 'package:new_flutter/pages/discover/recommended_song_list.dart';
import 'package:new_flutter/utils/log_utils.dart';

import '../../http/bean/home_page_bean.dart';
import '../../http/bean/home_page_dragon_ball_bean.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  List<IconDataBean> dragonBallList = [];
  List<Banners>? banners = [];
  Data homePageBean = Data();
  List<Creatives>? recommendList = [];

  @override
  void initState() {
    super.initState();
    DioManager.instance.get(ServiceUrl.getHomeDragonBall, null, (data) {
      setState(() {
        dragonBallList = List<IconDataBean>.from(
            json.decode(json.encode((data))).map((e) => IconDataBean.fromJson(e)));
      });
    });

    DioManager.instance.get(ServiceUrl.getHomePage, null, (data) {

      homePageBean = Data.fromJson(json.decode(json.encode(data)));
      // 轮播图
      List<Blocks>? blocks = homePageBean.blocks;
      ExtInfo? extInfo = blocks?[0].extInfo;


      List<Creatives>? creativeRecommend = [];
      //个性歌单
      blocks?.forEach((element) {
        switch(element.blockCode){
        // 个性歌单
          case "HOMEPAGE_BLOCK_PLAYLIST_RCMD":
              creativeRecommend = element?.creatives;
            break;
        }
      });

      banners = extInfo?.banners;
      recommendList = creativeRecommend;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {


    // Future.wait([DioManager.instance.get(ServiceUrl.getHomePage, {}), DioManager.instance.get(ServiceUrl.getHomeDragonBall, {})]).then((value){
    //   dragonBallList = List<Data>.from(json.decode(value[1].toString()).map((e) => Data.fromJson(e)));
    // });

    return Column(
      children: [
        DiscoverTopBar(),
        DiscoverBanner(banners),
        DiscoverTabs(dragonBallList),
        RecommendedSongList(recommendList)
      ],
    );
  }
}
