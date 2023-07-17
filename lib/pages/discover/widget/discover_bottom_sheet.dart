import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class DisCoverBottomSheetFactory {
  static Widget createBottomSheet(
      BuildContext context, String title, String path) {

      return Container(
        height: 200,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          children: [
            SizedBox(
                height: 40,
                child: Padding(
                  padding: EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,
                          style: const TextStyle(
                              color: Color(0xFF3E475B), fontSize: 16)),
                      InkWell(
                        child: Image.asset(
                            "${Constant.ASSETS_IMG}icon_recommend_close.png",
                            width: 24,
                            height: 24),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                )),
            Container(
              height: 1,
              decoration: BoxDecoration(color: Colors.black12),
              margin: EdgeInsets.only(bottom: 8),
            ),
            Container(
                height: 40,
                padding: EdgeInsets.only(left: 18, right: 18),
                child: InkWell(
                  child: Row(children: [
                    Image.asset(
                        "${Constant.ASSETS_IMG}icon_normal_recommend.png",
                        width: 24,
                        height: 24),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Text("优先推荐"),
                    )
                  ]),
                )),
            Container(
                height: 40,
                padding: EdgeInsets.only(left: 18, right: 18),
                child: InkWell(
                  child: Row(children: [
                    Image.asset("${Constant.ASSETS_IMG}icon_not_recommend.png",
                        width: 24, height: 24),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Text("减少推荐"),
                    )
                  ]),
                )),
            Container(
                height: 40,
                padding: EdgeInsets.only(left: 18, right: 18),
                child: InkWell(
                  child: Row(children: [
                    Image.asset("${Constant.ASSETS_IMG}icon_recommend_more.png",
                        width: 24, height: 24),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Text("更多内容"),
                    )
                  ]),
                ))
          ],
        ),
      );

  }
}
