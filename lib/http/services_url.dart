import '../constant/constant.dart';

class ServiceUrl {
  // 请求成功
  static const API_CODE_SUCCESS = "200";
  // 首页-发现
  static String getHomePage = '${Constant.baseUrl}homepage/block/page';
  // 首页-发现-圆形图标入口列表
  static String getHomeDragonBall = "${Constant.baseUrl}homepage/dragon/ball";
  // 音乐日历
  static String getMusicCalendar = "${Constant.baseUrl}calendar";
}
