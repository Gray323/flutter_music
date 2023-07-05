import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/constant/constant.dart';

class DiscoverTabs extends HookWidget {
  const DiscoverTabs({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> tabList = [
      Tab("${Constant.ASSETS_IMG}icon_recommend.png", "每日推荐"),
      Tab("${Constant.ASSETS_IMG}icon_private.png", "私人漫游"),
      Tab("${Constant.ASSETS_IMG}icon_song_sheet.png", "歌单"),
      Tab("${Constant.ASSETS_IMG}icon_charts.png", "排行榜"),
      Tab("${Constant.ASSETS_IMG}icon_book.png", "有声书"),
      Tab("${Constant.ASSETS_IMG}icon_album.png", "数字专辑"),
      Tab("${Constant.ASSETS_IMG}icon_live_broadcast.png", "直播"),
      Tab("${Constant.ASSETS_IMG}icon_care_song.png", "关注新歌"),
      Tab("${Constant.ASSETS_IMG}icon_meet.png", "一歌一遇"),
      Tab("${Constant.ASSETS_IMG}icon_collect.png", "收藏家"),
    ];

    return Expanded(
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: tabList
          .map((tab) => Container(
                child: Column(
                  children: [
                    Image.asset(
                      tab.icon,
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
              ))
          .toList(),
    ));
  }
}

class Tab {
  String icon;
  String text;
  Tab(this.icon, this.text);
}
