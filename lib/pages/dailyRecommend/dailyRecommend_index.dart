import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/constant.dart';

class DailyRecommendPage extends StatefulWidget {
  const DailyRecommendPage({super.key});

  @override
  State<StatefulWidget> createState() => _DailyRecommendState();
}

class _DailyRecommendState extends State<DailyRecommendPage> {
  final List<String> _tabs = <String>[
    '默认推荐',
    '风格推荐',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: DefaultTabController(
            length: _tabs.length,
            child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        sliver: SliverAppBar(
                          //appbar标题
                          elevation: 0, //去除状态栏下的一条阴影
                          toolbarHeight: 0,
                          systemOverlayStyle: const SystemUiOverlayStyle(
                            // statusBarColor: R.color.WHITE,
                            statusBarColor: Colors.transparent,
                            systemNavigationBarColor: Colors.white,
                            systemNavigationBarIconBrightness: Brightness.light,
                            statusBarIconBrightness: Brightness.light,
                            statusBarBrightness: Brightness.light,
                          ),
                          // systemOverlayStyle: SystemUiOverlayStyle.dark,
                          // 列表在滚动的时候appbar是否一直保持可见
                          pinned: true,
                          //展开的最大高度m
                          expandedHeight: 240,
                          collapsedHeight: 60,
                          flexibleSpace: FlexibleSpaceBar(
                            collapseMode: CollapseMode.none,
                            background: Stack(
                              children: <Widget>[
                                Align(
                                  child: Image.asset(
                                      "${Constant.ASSETS_IMG}bg_recommend.jpeg",
                                      fit: BoxFit.cover,
                                      height: 260,
                                      width: double.infinity),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        color: Colors.black38),
                                    width: 240,
                                    height: 45,
                                    margin: const EdgeInsets.only(top: 24),
                                    child: Row(
                                      children: _tabs
                                          .map((String name) => Expanded(
                                                  child: Container(
                                                margin: EdgeInsets.all(5),
                                                child: Align(
                                                  child: Text(name),
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                              )))
                                          .toList(),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //强制appbar下面有阴影
                          forceElevated: true,
                          //显示在appbar下方,通常是TabBar,且小部件必须实现[PreferredSizeWidget]
                          //才能在bottom中使用!!!!
                        )),
                  ];
                },
                body: TabBarView(
                    children: _tabs
                        .map((String name) => SafeArea(child: Builder(
                              builder: (BuildContext context) {
                                return CustomScrollView(
                                  key: PageStorageKey(name),
                                  slivers: <Widget>[
                                    SliverOverlapInjector(
                                        handle: NestedScrollView
                                            .sliverOverlapAbsorberHandleFor(
                                                context)),
                                    SliverPadding(
                                      padding: const EdgeInsets.all(8.0),
                                      sliver: SliverFixedExtentList(
                                          delegate: SliverChildBuilderDelegate(
                                              (context, index) => ListTile(
                                                    title: Text("item${index}"),
                                                  )),
                                          itemExtent: 48),
                                    )
                                  ],
                                );
                              },
                            )))
                        .toList()))),
      ),
    );
  }
}
