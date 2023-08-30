import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/constant/constant.dart';
import 'package:new_flutter/utils/log_utils.dart';

import '../../http/bean/home_page_dragon_ball_bean.dart';
import '../../routers/routers.dart';

class DiscoverTabs extends StatefulWidget {
  List<IconDataBean> dragonBallList = [];

  DiscoverTabs(this.dragonBallList, {super.key});

  @override
  State<StatefulWidget> createState() => _DiscoverTabsState();
}

class _DiscoverTabsState extends State<DiscoverTabs> {
  @override
  Widget build(BuildContext context) {
    List<Tab> tabList = [
      Tab("${Constant.ASSETS_IMG}icon_recommend.png", "每日推荐",
          "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_private.png", "私人漫游", "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_song_sheet.png", "歌单", "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_charts.png", "排行榜", "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_book.png", "有声书", "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_album.png", "数字专辑", "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_live_broadcast.png", "直播",
          "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_care_song.png", "关注新歌",
          "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_meet.png", "一歌一遇", "/dailyRecommend"),
      Tab("${Constant.ASSETS_IMG}icon_collect.png", "收藏家", "/dailyRecommend"),
    ];

    double width = MediaQuery.of(context).size.width;
    double tabMarginWidth = (width - 40 - 72) / 10;

    return Container(
      height: 80,
      margin: const EdgeInsets.only(left: 18, right: 18),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: tabList
            .map((tab) => InkWell(
                  child: Container(
                    margin: EdgeInsets.only(right: tabMarginWidth, left: 12),
                    child: Column(
                      children: [
                        Image.asset(
                          tab.icon,
                          width: 24,
                          height: 24,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12),
                          child: Text(
                            tab.text,
                            style: const TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Routes.navigateTo(context, tab.route, clearStack: false);
                  },
                ))
            .toList(),
      ),
    );
  }

  @override
  void didUpdateWidget(DiscoverTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    // 接口返回的图标不好看
    // setState(() {
    //   xxx = widget.dragonBallList
    // });
  }
}

class Tab {
  String icon;
  String text;
  String route;
  Tab(this.icon, this.text, this.route);
}
