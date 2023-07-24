import 'package:flutter/material.dart';
import 'package:new_flutter/constant/constant.dart';

class WidgetLoginTitle extends StatelessWidget{
  const WidgetLoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const InkWell(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text("立即体验", style: TextStyle(fontSize: 16, color: Color(0xff6b91bb)),),
          ),
        )
      ],
    );
  }

}