import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter/http/dio_manager.dart';
import 'package:new_flutter/provider/login_provider.dart';
import 'package:new_flutter/routers/routers.dart';
import 'package:new_flutter/utils/toast_utils.dart';
import 'package:new_flutter/utils/user_utils.dart';

import '../../http/services_url.dart';
class WidgetLoginBtn extends ConsumerWidget{
  const WidgetLoginBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserInfo userInfo = ref.watch(loginProvider);

   return Container(
     width: double.infinity,
     margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
     child: ElevatedButton(
         onPressed: (){
            print("登录->${userInfo.userName}");
            if(userInfo.userName.isEmpty || userInfo.password.isEmpty){
              ToastUtils.show("请输入账户名和密码");
              return;
            }
            FormData params = FormData.fromMap({'username': userInfo.userName, 'password': userInfo.password});
         },
         child: const Padding(
           padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
           child: Text("登录", style: TextStyle(fontSize: 16)),
         )
     ),
   );
  }
  
}