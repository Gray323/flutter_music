import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:new_flutter/constant/constant.dart';

class DioManager{

  static late final DioManager instance = DioManager._internal();

  factory DioManager() => instance;

  static late Dio dio;

  DioManager._internal(){
    var options = BaseOptions(
      baseUrl: Constant.baseUrl,
      connectTimeout: const Duration(microseconds: 5000),
      receiveTimeout: const Duration(microseconds: 3000),
    );
    dio = Dio(options);
  }

  Future<Map<String, dynamic>> post(String url, params, [Function? successCallBack, Function? errorCallBack]) async{
    Response? response;
    print("url->$url");
    try {
      response = await dio.post(url, data: params) ;
    }  catch (error) {
      print('请求异常: $error');
      if (errorCallBack != null) {
        errorCallBack(error.toString());
      } else {
        return <String, dynamic>{};
      }
    }
    if (response?.statusCode == 200) {
      Map<String, dynamic> dataMap = json.decode(json.encode(response?.data));
      if (dataMap['status'] == 200) {
        if (successCallBack != null) {
          successCallBack(dataMap['data']);
        } else {
          return dataMap['data'];
        }
      } else {
        if (errorCallBack != null) {
          errorCallBack(dataMap['msg']);
        } else {
          return <String, dynamic>{};
        }
      }
    } else {
      if (errorCallBack != null) {
        errorCallBack(response.toString());
      } else {
        return <String, dynamic>{};
      }
    }
    return <String, dynamic>{};
  }
}