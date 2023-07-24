import 'package:flutter/material.dart';

import '../../constant/constant.dart';

class OtherLoginWidget extends StatelessWidget {
  const OtherLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  color: const Color(0xffEAEAEA),
                  height: 1,
                ),
              ),
              const Expanded(
                flex: 1,
                child: Center(
                  child: Text( '其他登陆方式',style:TextStyle(fontSize: 12, color: Color(0xff999999))),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  color: const Color(0xffEAEAEA),
                  height: 1,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, top: 10),
                child: Column(
                  children: [
                    Image.asset(
                      "${Constant.ASSETS_IMG}login_weixin.png",
                      width: 40,
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text("微信", style: TextStyle(fontSize: 12, color: Color(0xff999999))),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, top: 10),
                child: Column(
                  children: [
                    Image.asset(
                      "${Constant.ASSETS_IMG}login_qq.png",
                      width: 40,
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: const Text("QQ", style: TextStyle(fontSize: 12, color: Color(0xff999999))),
                    )
                  ],
                ),
              )
            ],
          )
        ]
      )
    );
  }
}
