import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DiscoverBanner extends HookWidget{
  const DiscoverBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      outer:false,
      itemBuilder: (c, i) {
        return Wrap(
          runSpacing: 6.0,
          children: [0,1,2,3,4,5,6,7,8,9].map((i){
            return SizedBox(
              width: MediaQuery.of(context).size.width/5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.width * 0.12,
                    child: Image.network("https://img.zcool.cn/community/015beb5c212a71a80121df908e99ac.jpg?x-oss-process=image/resize,h_600/format,jpg"),
                  ),
                  Padding(padding: EdgeInsets.only(top:6.0),child: Text("$i"),)
                ],
              ),
            );
          }).toList(),
        );
      },
      pagination: const SwiperPagination(
          margin: EdgeInsets.all(5.0)
      ),
      itemCount: 10,
    );
  }

}