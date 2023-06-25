import 'package:flutter/material.dart';

class RegisterForgetWidget extends StatelessWidget{
  const RegisterForgetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 3),
            child: Text("注册", style: TextStyle(fontSize: 13, color: Color(0xff6B91BB))),
          ),
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.only(right: 20, top: 3),
            child: Text("忘记密码", style: TextStyle(fontSize: 13, color: Color(0xff6B91BB))),
          ),
        )
      ],
    );
  }

}