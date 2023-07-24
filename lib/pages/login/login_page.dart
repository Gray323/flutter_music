import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter/pages/login/widget_login_title.dart';
import 'package:new_flutter/pages/login/widget_other_login.dart';
import 'package:new_flutter/pages/login/widget_register_forget.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const WidgetLoginTitle(),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 20),
                  child: const Text("登录", style: TextStyle(fontSize: 24, color: Colors.black)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                      border: Border.all()
                  ),
                ),
                const RegisterForgetWidget(),
                const OtherLoginWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }

}
