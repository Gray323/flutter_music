import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:new_flutter/pages/discover/widget/discover_bottom_sheet.dart';

import '../../constant/constant.dart';
import '../../http/bean/home_page_bean.dart';

class TopSongList extends StatefulWidget {
  List<Creatives>? topList = [];


  TopSongList(this.topList, {super.key});

  @override
  State<StatefulWidget> createState() => TopSongListState();
}

class TopSongListState extends State<TopSongList> {
  List<Creatives> topList = [];

  List<int> colorList = [0xFFC5922C, 0xFF8088AA, 0xFFC5794E];

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "排行榜>",
                style: TextStyle(fontSize: 18),
              ),
              InkWell(
                child: Image.asset("${Constant.ASSETS_IMG}icon_more.png",
                    width: 24, height: 24),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return DisCoverBottomSheetFactory.createBottomSheet(
                            context, "排行榜", "");
                      },
                      backgroundColor: Colors.white,
                      barrierColor: Colors.black54,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))));
                },
              )
            ],
          ),
          Container(
            height: 340,
            transform: Matrix4.translationValues(-18, 0, 0),
            child: PageView(
              allowImplicitScrolling: true,
              controller: PageController(
                viewportFraction: 0.
              ),
              scrollDirection: Axis.horizontal,
              children: topList.map((e) => Container(
                height: 300,
                width: width,
                padding: EdgeInsets.all(18),
                margin: const EdgeInsets.only(right: 18, top: 18, bottom: 18),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,  //底色,阴影颜色
                        offset: Offset(0, -2), //阴影位置,从什么位置开始
                        blurRadius: 15,  // 阴影模糊层度
                        spreadRadius: 1,  //阴影模糊大小
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e?.uiElement?.mainTitle?.title != null ?  "${e?.uiElement?.mainTitle?.title}>" : "",
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          e?.uiElement?.mainTitle?.titleDesc ?? "",
                          style: const TextStyle(fontSize: 12, color: Colors.black26),
                        )
                      ],
                    ),
                    ...e?.resources?.asMap().entries.map((entry){
                      Resources resource = entry.value;
                      int index = entry.key;
                      return Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 18),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  child: Image.network(resource?.uiElement?.image?.imageUrl ?? "", width: 60, height: 60, fit: BoxFit.cover),
                                )
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 18),
                              child:  Text("${index + 1}", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(colorList[index]))),
                            ),
                            Expanded(
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    resource?.resourceExtInfo?.songData?.name != null ?
                                    Text( resource?.resourceExtInfo?.songData?.name ?? "", overflow: TextOverflow.ellipsis,) :
                                    Text(resource?.uiElement?.mainTitle?.title ?? "", overflow: TextOverflow.ellipsis, maxLines: 2),

                                    resource?.resourceExtInfo?.songData?.name != null ?
                                    Text(getPlayerName(resource?.resourceExtInfo?.artists ?? []), overflow: TextOverflow.ellipsis) : SizedBox(width: 0, height: 0)
                                  ],
                                )
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              child: Text(resource?.uiElement?.labelText?.text ?? "", style: TextStyle(color: Color(0xFFFF33A3A), fontSize: 12),),
                            )
                          ],
                        ),
                      );
                    }).toList() ?? [],
                  ],
                ),
              )).toList(),
            ),
          )
        ]));
  }

  String getPlayerName(List<Artists> list){
    List<String> nameList = [];
    list.forEach((element) {
      if(element?.name != null){
        nameList.add(element.name!);
      }
    });
    return nameList.join("/");
  }

  @override
  void didUpdateWidget(covariant TopSongList oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      topList = widget.topList ?? [];
      print(topList.length);
    });
  }

}
