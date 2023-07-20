import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/http/dio_manager.dart';
import 'package:new_flutter/http/services_url.dart';
import 'package:new_flutter/pages/discover/discover_banner.dart';
import 'package:new_flutter/pages/discover/discover_music_calendar.dart';
import 'package:new_flutter/pages/discover/discover_top_bar.dart';
import 'package:new_flutter/pages/discover/discover_tabs.dart';
import 'package:new_flutter/pages/discover/radar_playlist.dart';
import 'package:new_flutter/pages/discover/recommended_song_list.dart';
import 'package:new_flutter/pages/discover/top_song_list.dart';
import 'package:new_flutter/pages/discover/widget/discover_line.dart';
import 'package:new_flutter/utils/event_bus_utils.dart';
import 'package:new_flutter/utils/log_utils.dart';

import '../../http/bean/home_page_bean.dart';
import '../../http/bean/home_page_dragon_ball_bean.dart';
import '../../http/bean/music_calendar_bean.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<IconDataBean> dragonBallList = [];
  List<Banners>? banners = [];
  Data homePageBean = Data();
  List<Creatives>? recommendList = [];
  List<Creatives>? personalRecommendList = [];
  List<Creatives>? topList = [];
  List<Creatives>? radarList = [];
  List<CalendarEvents>? calendarList = [];

  @override
  void initState() {
    super.initState();

    Future.wait([getHomeDragonBall(), getHome(), getMusicCalendar()]).whenComplete(() {
      print("结束了");
    });
  }

  Future getHomeDragonBall() async {
    return DioManager.instance.get(ServiceUrl.getHomeDragonBall, null, (data) {
      setState(() {
        dragonBallList = List<IconDataBean>.from(json
            .decode(json.encode((data)))
            .map((e) => IconDataBean.fromJson(e)));
      });
    });
  }

  Future getHome() async {
    return DioManager.instance.get(ServiceUrl.getHomePage, null, (data) {
      homePageBean = Data.fromJson(json.decode(json.encode(data)));
      // 轮播图
      List<Blocks>? blocks = homePageBean.blocks;
      ExtInfo? extInfo = blocks?[0].extInfo;

      List<Creatives>? creativeRecommend = [];
      List<Creatives>? creativePersonalRecommend = [];
      List<Creatives>? creativeTop = [];
      List<Creatives>? creativeRadar = [];
      //个性歌单
      blocks?.forEach((element) {
        switch (element.blockCode) {
          // 个性歌单
          case "HOMEPAGE_BLOCK_PLAYLIST_RCMD":
            creativeRecommend = element?.creatives;
            break;
          case "HOMEPAGE_BLOCK_TOPLIST":
            creativeTop = element?.creatives;
            break;
          case "HOMEPAGE_BLOCK_MGC_PLAYLIST":
            creativeRadar = element?.creatives;
            break;
        }
      });

      banners = extInfo?.banners;
      recommendList = creativeRecommend;
      topList = creativeTop;
      radarList = creativeRadar;
      setState(() {});
    });
  }
  
  Future getMusicCalendar() async{
    Map<String, dynamic> params = HashMap();
    DateTime now = DateTime.now();
    DateTime monthStart = DateTime(now.year, now.month, now.day, 0, 0, 0);
    DateTime monthEnd = DateTime(now.year, now.month, now.day ,23, 59, 59);
    params["startTime"] = monthStart.millisecondsSinceEpoch;
    params["endTime"] = monthEnd.millisecondsSinceEpoch;
    return DioManager.instance.get(ServiceUrl.getMusicCalendar, params, (data){
      CalendarData calendarData = CalendarData.fromJson(json.decode(json.encode(data)));
      calendarList = List<CalendarEvents>.from(json
          .decode(json.encode((calendarData.calendarEvents)))
          .map((e) => CalendarEvents.fromJson(e)));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DiscoverTopBar(),
          DiscoverBanner(banners),
          DiscoverTabs(dragonBallList),
          RecommendedSongList(recommendList),
          DiscoverLine(),
          TopSongList(topList),
          DiscoverLine(),
          RadarPlayList(radarList),
          DiscoverLine(),
          DiscoverMusicCalendar(calendarList)
        ],
      ),
    );
  }
}
