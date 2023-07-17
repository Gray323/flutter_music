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

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double tabMarginWidth = width - 36 - 36;

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
            height: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: topList.map((e) => Container(
                width: tabMarginWidth,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              )).toList(),
            ),
          )
        ]));
  }

  @override
  void didUpdateWidget(covariant TopSongList oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      topList = widget.topList ?? [];
    });
  }

}
