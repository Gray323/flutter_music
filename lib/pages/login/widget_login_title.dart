import 'package:flutter/material.dart';
import 'package:new_flutter/constant/constant.dart';

class WidgetLoginTitle extends StatelessWidget{
  const WidgetLoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Image.asset(
              "${Constant.ASSETS_IMG}icon_close.png",
              width: 20,
              height: 20,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
          }
        ),
        const InkWell(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text("帮助", style: TextStyle(fontSize: 16, color: Color(0xff6b91bb)),),
          ),
        )
      ],
    );
  }

}