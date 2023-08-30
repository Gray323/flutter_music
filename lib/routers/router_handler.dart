import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:new_flutter/pages/login/login_page.dart';

import '../pages/dailyRecommend/dailyRecommend_index.dart';
import '../pages/index/index_page.dart';

var loginPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return LoginPage();
    });

var indexPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const IndexPage();
    });

var dailyRecommendPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const DailyRecommendPage();
    });