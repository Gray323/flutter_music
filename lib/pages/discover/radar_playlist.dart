import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/pages/discover/widget/discover_bottom_sheet.dart';
import 'package:new_flutter/utils/text_utils.dart';

import '../../constant/constant.dart';
import '../../http/bean/home_page_bean.dart';
import '../../utils/event_bus_utils.dart';
import '../../utils/image_utils.dart';

class RadarPlayList extends StatefulWidget {
  List<Creatives>? recommendList = [];


  RadarPlayList(this.recommendList, {super.key});

  @override
  State<StatefulWidget> createState() => RadarPlayListState();

}

class RadarPlayListState extends State<RadarPlayList> {
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
                const Text(
                  "雷达歌单>",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                InkWell(
                  child:  Image.asset("${Constant.ASSETS_IMG}icon_more.png", width: 24, height: 24),
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (context){
                      return DisCoverBottomSheetFactory.createBottomSheet(context, "雷达歌单", "");
                    },
                        backgroundColor: Colors.white,
                        barrierColor: Colors.black54,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20), topRight: Radius.circular(20)
                            )
                        )
                    );
                  },
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 18, bottom: 18),
              height: 230,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: recommendList.map((e) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        color: Colors.transparent,
                        margin: const EdgeInsets.only(right:12),
                        elevation: 4,
                        borderOnForeground: false,
                        child:  Container(
                          width: 160,
                          height: 160,
                          padding: const EdgeInsets.only(right:4),
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                          clipBehavior: Clip.hardEdge,
                          child: Stack(
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16))),
                                      clipBehavior: Clip.hardEdge,
                                      child: ImageUtils.loadImage(e.uiElement?.image?.imageUrl ?? "", 160, 160)
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
                        ),
                      ),

                      Container(
                        width: 160,
                        margin: EdgeInsets.only(top: 4, left: 0),
                        child:  Text(e.uiElement?.mainTitle?.title ?? "", maxLines: 2, overflow: TextOverflow.ellipsis,),
                      ),

                    ],
                  )).toList()
              ),
            )
          ],
        ));
  }

  @override
  void didUpdateWidget(covariant RadarPlayList oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      recommendList = widget.recommendList ?? [];
    });
  }
}
