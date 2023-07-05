import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:new_flutter/constant/constant.dart';

class DiscoverTopBar extends HookWidget {
  const DiscoverTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("${Constant.ASSETS_IMG}icon_drawer.png",
              width: 24, height: 24),
          Expanded(
            flex: 1,
            child: Container(
              height: 24,
              width: 300,
              margin: const EdgeInsets.only(left: 16, right: 16),
              padding:  const EdgeInsets.only(left: 8, right: 8),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0x33fad0c4), Color(0x33ffd1ff)]
                  )
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("${Constant.ASSETS_IMG}icon_top_bar_search.png",
                      width: 16, height: 16),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin:  const EdgeInsets.only(left: 8, right: 8),
                      child: const Text("海阔天空", style: TextStyle(color: Colors.grey))
                    )
                  ),
                  Image.asset("${Constant.ASSETS_IMG}icon_top_bar_qr.png",
                      width: 16, height: 16),
                ],
              ),
            ),
          ),
          Image.asset("${Constant.ASSETS_IMG}icon_voice.png",
              width: 24, height: 24)
        ],
      ),
    );
  }
}
