import 'package:flutter/material.dart';
import 'package:new_flutter/pages/discover/widget/discover_bottom_sheet.dart';

import '../../constant/constant.dart';
import '../../http/bean/music_calendar_bean.dart';
import '../../utils/image_utils.dart';

class DiscoverMusicCalendar extends StatefulWidget{
  List<CalendarEvents>? musicCalendarList = [];

  DiscoverMusicCalendar(this.musicCalendarList, {super.key});

  @override
  State<StatefulWidget> createState() => DiscoverMusicCalendarState();


}

class DiscoverMusicCalendarState extends State<DiscoverMusicCalendar>{
  List<CalendarEvents> musicCalendarList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "音乐日历",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8, top: 3),
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                    decoration: const BoxDecoration(
                      color: Color(0xFFEBEDF1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child: Text("今日${musicCalendarList.length}条>", style: const TextStyle(color: Color(0xFF3C455A), fontSize: 12, fontWeight:FontWeight.w500)),
                  )
                ],
              ),
              InkWell(
                child: Image.asset("${Constant.ASSETS_IMG}icon_more.png",
                    width: 24, height: 24),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return DisCoverBottomSheetFactory.createBottomSheet(
                            context, "音乐日历", "");
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
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            child: Column(
              children:  musicCalendarList.map((e) => Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Container(
                      margin: EdgeInsets.only(right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 6),
                            child: Row(
                              children: [
                                Text("07/20"),
                                Text("发布"),
                              ],
                            ),
                          ),
                          Text(e?.title ?? "", maxLines: 2, overflow: TextOverflow.ellipsis)
                        ],
                      ),
                    )),
                    ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        child: ImageUtils.loadImage(e?.imgUrl ?? "", 60, 60)
                    )
                  ],
                ),
              )).toList(),
            )
          )
        ],
      )
    );
  }

  @override
  void didUpdateWidget(covariant DiscoverMusicCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      musicCalendarList = widget.musicCalendarList ?? [];
    });
  }


}