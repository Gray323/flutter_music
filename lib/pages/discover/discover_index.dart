import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/http/dio_manager.dart';
import 'package:new_flutter/http/services_url.dart';
import 'package:new_flutter/pages/discover/discover_banner.dart';
import 'package:new_flutter/pages/discover/discover_top_bar.dart';
import 'package:new_flutter/pages/discover/discover_tabs.dart';

import '../../http/bean/home_page_bean.dart';

class DiscoverPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

  List<IconData> dragonBallList = [];
  List<Banners> banners = [];

  @override
  void initState() {
    super.initState();
    DioManager.instance.get(ServiceUrl.getHomeDragonBall, null, (data) {
      setState(() {
        dragonBallList = List<IconData>.from(
            json.decode(json.encode((data))).map((e) => Data.fromJson(e)));
      });
    });

    DioManager.instance.get(ServiceUrl.getHomePage, null, (data) {

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
        DiscoverBanner(),
        DiscoverTabs(dragonBallList),
      ],
    );
  }
}
