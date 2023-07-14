import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/pages/discover/widget/discover_bottom_sheet.dart';
import 'package:new_flutter/utils/text_utils.dart';

import '../../constant/constant.dart';
import '../../http/bean/home_page_bean.dart';

class RecommendedSongList extends StatefulWidget {
  List<Creatives>? recommendList = [];


  RecommendedSongList(this.recommendList, {super.key});

  @override
  State<StatefulWidget> createState() => RecommendedSongListState();

}

class RecommendedSongListState extends State<RecommendedSongList> {
  List<Creatives> recommendList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "推荐歌单>",
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  child:  Image.asset("${Constant.ASSETS_IMG}icon_more.png", width: 24, height: 24),
                  onTap: (){
                    showBottomSheet(context: context, builder: (BuildContext context){
                      return DisCoverBottomSheetFactory.createBottomSheet(context, "推荐歌单", "");
                    });
                  },
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              height: 160,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: recommendList.map((e) => Container(
                    width: 160,
                    height: 160,
                    margin: const EdgeInsets.only(right: 18),
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                            clipBehavior: Clip.hardEdge,
                            child: Image.network(e.uiElement?.image?.imageUrl ?? ""),
                          )
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Image.asset("${Constant.ASSETS_IMG}icon_play.png", width: 24, height: 24)
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Row(
                            children: [
                              Image.asset("${Constant.ASSETS_IMG}icon_play.png", width: 12, height: 12),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                child: Text(
                                  TextUtils.getSongNum(e.resources?[0]?.resourceExtInfo!.playCount ?? 0),
                                  style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )).toList()
              ),
            )
          ],
        ));
  }

  @override
  void didUpdateWidget(covariant RecommendedSongList oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      recommendList = widget.recommendList ?? [];
    });
  }
}
