import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RecommendedSongList extends HookWidget{
  const RecommendedSongList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 18, right: 18),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [],
        ),
      ),
    );
  }

}