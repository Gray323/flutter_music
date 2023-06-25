import 'package:flutter/material.dart';
import 'package:new_flutter/constant/constant.dart';
import 'package:new_flutter/routers/routers.dart';
import 'package:new_flutter/utils/user_utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  SplashPageState createState() {
    return SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pop(context);
      Routes.navigateTo(context, Routes.indexPage, clearStack: true);
      // Navigator.pop(context);
      // if(!UserUtils.isLogin()){
      //   Routes.navigateTo(context, Routes.loginPage, clearStack: true);
      // }else{
      //
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset("${Constant.ASSETS_IMG}icon_splash.png"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Text("音乐的力量", style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
