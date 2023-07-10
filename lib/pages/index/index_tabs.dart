import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/constant/constant.dart';
import 'package:new_flutter/pages/broadcast/broadcast_page.dart';
import 'package:new_flutter/pages/care/cart_page.dart';
import 'package:new_flutter/pages/community/community_page.dart';
import 'package:new_flutter/pages/discover/discover_index.dart';
import 'package:new_flutter/pages/mine/mine_page.dart';

class IndexTabs extends HookWidget{
  IndexTabs({super.key});



  final List tabBodies = [
    const DiscoverPage(),
    const BroadCastPage(),
    const MinePage(),
    const CarePage(),
    const CommunityPage()
  ];


  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        icon:  Image.asset("${Constant.ASSETS_IMG}icon_discover_normal.png", width: 30, height: 30),
        activeIcon: Image.asset("${Constant.ASSETS_IMG}icon_discover_seleced.png", width: 30, height: 30),
        label: "发现"
    ),
    BottomNavigationBarItem(
        icon:  Image.asset("${Constant.ASSETS_IMG}icon_broadcast_normal.png", width: 30, height: 30,),
        activeIcon: Image.asset("${Constant.ASSETS_IMG}icon_broadcast_selected.png", width: 30, height: 30),
        label: "播客"
    ),
    BottomNavigationBarItem(
        icon:  Image.asset("${Constant.ASSETS_IMG}icon_mine_normal.png", width: 30, height: 30,),
        activeIcon: Image.asset("${Constant.ASSETS_IMG}icon_mine_selected.png", width: 30, height: 30),
        label: "我的"
    ),
    BottomNavigationBarItem(
        icon:  Image.asset("${Constant.ASSETS_IMG}icon_care_normal.png", width: 30, height: 30,),
        activeIcon: Image.asset("${Constant.ASSETS_IMG}icon_care_selected.png", width: 30, height: 30),
        label: "关注"
    ),
    BottomNavigationBarItem(
      icon:  Image.asset("${Constant.ASSETS_IMG}icon_community_normal.png", width: 30, height: 30,),
      activeIcon: Image.asset("${Constant.ASSETS_IMG}icon_community_selected.png", width: 30, height: 30),
      label: "社区",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return Scaffold(
      backgroundColor: const Color(0xfff7f9fc),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: bottomTabs,
        currentIndex: currentIndex.value,
        selectedItemColor: Colors.red,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index){
          currentIndex.value = index;
        },
      ),
      body: tabBodies[currentIndex.value],
    );
  }

}