import 'dart:collection';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_flutter/routers/router_handler.dart';

class Routes {
  static FluroRouter router = FluroRouter();
  static String loginPage = "/login";
  static String indexPage = "/index";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print('route not found!');
    });

    router.define(loginPage, handler: loginPageHandler);
    router.define(indexPage, handler: indexPageHandler);
  }

  static Future navigateTo(BuildContext context, String path,
      {Map<String, dynamic>? params,
      bool clearStack = false,
      TransitionType transition = TransitionType.fadeIn}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = "$query\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    print("navigateTo参数: $query");
    path = path + query;
    return router.navigateTo(context, path,
        clearStack: clearStack, transition: transition);
  }

  // 对参数进行encode，解决参数中有特殊字符，影响fluro路由匹配(https://www.jianshu.com/p/e575787d173c)
  static Future navigatepushAndRemoveUntil(BuildContext context, String path,
      {Map<String, dynamic>? params,
      bool clearStack = false,
      TransitionType transition = TransitionType.fadeIn}) {
    String query = "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key]);
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    path = path + query;
    return router.navigateTo(context, path,
        clearStack: clearStack, transition: transition);
  }
}
