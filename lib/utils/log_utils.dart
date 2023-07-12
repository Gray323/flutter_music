import 'package:flutter/foundation.dart';
import 'package:stack_trace/stack_trace.dart';

enum FLogMode {
  debug,    // ?? DEBUG
  warning,  // ?? WARNING
  info,     // ?? INFO
  error,    // ?? ERROR
}

void Log(dynamic msg, { FLogMode mode = FLogMode.debug }) {
  if (kReleaseMode) { // release模式不打印
    return;
  }
  var chain = Chain.current(); // Chain.forTrace(StackTrace.current);
  // 将 core 和 flutter 包的堆栈合起来（即相关数据只剩其中一条）
  chain = chain.foldFrames((frame) => frame.isCore || frame.package == "flutter");
  // 取出所有信息帧
  final frames = chain.toTrace().frames;
  // 找到当前函数的信息帧
  final idx = frames.indexWhere((element) => element.member == "FLog");
  if (idx == -1 || idx+1 >= frames.length) {
    return;
  }
  // 调用当前函数的函数信息帧
  final frame = frames[idx+1];

  var modeStr = "";
  switch(mode) {
    case FLogMode.debug:
      modeStr = "?? DEBUG";
      break;
    case FLogMode.warning:
      modeStr = "?? WARNING";
      break;
    case FLogMode.info:
      modeStr = "?? INFO";
      break;
    case FLogMode.error:
      modeStr = "?? ERROR";
      break;
  }

  if (kDebugMode) {
    print("$modeStr ${frame.uri.toString().split("/").last}(${frame.line}) - $msg ");
  }
}