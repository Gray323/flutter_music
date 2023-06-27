import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DiscoverBanner extends HookWidget{
  const DiscoverBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth =  MediaQuery.of(context).size.width - 40;
    return ConstrainedBox(
        constraints:BoxConstraints.loose(Size(screenWidth, 170.0)),
        child: Swiper(
            outer:false,
            itemBuilder: (c, i) {
              return Wrap(
                runSpacing: 6.0,
                children: [0,1,2,3,4,5,6,7,8,9].map((i){
                  return ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    clipBehavior: Clip.hardEdge,
                    child:  Image.network("https://game-video.cdn.bcebos.com/game-video/2020-4/1587612624712/%E5%90%8C%E7%A8%8B%E6%97%85%E8%A1%8C.PNG", fit: BoxFit.cover,),
                  );
                }).toList(),
              );
            },
            pagination: const SwiperPagination(
                margin: EdgeInsets.all(5.0)
            ),
            itemCount: 10,
          ),
        );
  }

}