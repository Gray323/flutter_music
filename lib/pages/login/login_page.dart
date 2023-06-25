import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter/pages/login/widget_login_btn.dart';
import 'package:new_flutter/pages/login/widget_login_title.dart';
import 'package:new_flutter/pages/login/widget_other_login.dart';
import 'package:new_flutter/pages/login/widget_register_forget.dart';
import 'package:new_flutter/provider/login_provider.dart';
import 'package:new_flutter/widget/textfield/TextFieldAccount.dart';
import 'package:new_flutter/widget/textfield/TextFieldPwd.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginWidget();
  }
}

class LoginWidget extends ConsumerWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const WidgetLoginTitle(),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
                  child: const Text("请输入密码账号", style: TextStyle(fontSize: 24, color: Colors.black)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: AccountEditText(
                    contentStrCallBack: (content){
                      ref.read(loginProvider.notifier).setUserName(content);
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: PwdEditText(
                    contentStrCallBack: (content){
                      ref.read(loginProvider.notifier).setPassword(content);
                    },
                  ),
                ),
                const WidgetLoginBtn(),
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
