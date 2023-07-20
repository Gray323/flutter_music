class MusicCalendarBean {
  MusicCalendarBean({
      num? code, 
      CalendarData? data, 
      String? message,}){
    _code = code;
    _data = data;
    _message = message;
}

  MusicCalendarBean.fromJson(dynamic json) {
    _code = json['code'];
    _data = json['data'] != null ? CalendarData.fromJson(json['data']) : null;
    _message = json['message'];
  }
  num? _code;
  CalendarData? _data;
  String? _message;
MusicCalendarBean copyWith({  num? code,
  CalendarData? data,
  String? message,
}) => MusicCalendarBean(  code: code ?? _code,
  data: data ?? _data,
  message: message ?? _message,
);
  num? get code => _code;
  CalendarData? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    return map;
  }

}

class CalendarData {
  CalendarData({
      dynamic abtest, 
      List<CalendarEvents>? calendarEvents, 
      CalendarConfig? calendarConfig,}){
    _abtest = abtest;
    _calendarEvents = calendarEvents;
    _calendarConfig = calendarConfig;
}

  CalendarData.fromJson(dynamic json) {
    _abtest = json['abtest'];
    if (json['calendarEvents'] != null) {
      _calendarEvents = [];
      json['calendarEvents'].forEach((v) {
        _calendarEvents?.add(CalendarEvents.fromJson(v));
      });
    }
    _calendarConfig = json['calendarConfig'] != null ? CalendarConfig.fromJson(json['calendarConfig']) : null;
  }
  dynamic _abtest;
  List<CalendarEvents>? _calendarEvents;
  CalendarConfig? _calendarConfig;
CalendarData copyWith({  dynamic abtest,
  List<CalendarEvents>? calendarEvents,
  CalendarConfig? calendarConfig,
}) => CalendarData(  abtest: abtest ?? _abtest,
  calendarEvents: calendarEvents ?? _calendarEvents,
  calendarConfig: calendarConfig ?? _calendarConfig,
);
  dynamic get abtest => _abtest;
  List<CalendarEvents>? get calendarEvents => _calendarEvents;
  CalendarConfig? get calendarConfig => _calendarConfig;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['abtest'] = _abtest;
    if (_calendarEvents != null) {
      map['calendarEvents'] = _calendarEvents?.map((v) => v.toJson()).toList();
    }
    if (_calendarConfig != null) {
      map['calendarConfig'] = _calendarConfig?.toJson();
    }
    return map;
  }

}

class CalendarConfig {
  CalendarConfig({
      Button? button,}){
    _button = button;
}

  CalendarConfig.fromJson(dynamic json) {
    _button = json['button'] != null ? Button.fromJson(json['button']) : null;
  }
  Button? _button;
CalendarConfig copyWith({  Button? button,
}) => CalendarConfig(  button: button ?? _button,
);
  Button? get button => _button;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_button != null) {
      map['button'] = _button?.toJson();
    }
    return map;
  }

}

class Button {
  Button({
      String? text, 
      String? targetUrl,}){
    _text = text;
    _targetUrl = targetUrl;
}

  Button.fromJson(dynamic json) {
    _text = json['text'];
    _targetUrl = json['targetUrl'];
  }
  String? _text;
  String? _targetUrl;
Button copyWith({  String? text,
  String? targetUrl,
}) => Button(  text: text ?? _text,
  targetUrl: targetUrl ?? _targetUrl,
);
  String? get text => _text;
  String? get targetUrl => _targetUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['targetUrl'] = _targetUrl;
    return map;
  }

}

class CalendarEvents {
  CalendarEvents({
      String? id, 
      String? eventType, 
      num? onlineTime, 
      num? offlineTime, 
      String? tag, 
      String? title, 
      String? imgUrl, 
      bool? canRemind, 
      bool? reminded, 
      String? targetUrl, 
      String? remindText, 
      dynamic logInfo, 
      dynamic alg, 
      String? resourceType, 
      String? resourceId, 
      String? eventStatus, 
      String? remindedText, 
      dynamic statusText, 
      dynamic statusTextColor, 
      bool? headline, 
      num? subCount, 
      dynamic extInfo,}){
    _id = id;
    _eventType = eventType;
    _onlineTime = onlineTime;
    _offlineTime = offlineTime;
    _tag = tag;
    _title = title;
    _imgUrl = imgUrl;
    _canRemind = canRemind;
    _reminded = reminded;
    _targetUrl = targetUrl;
    _remindText = remindText;
    _logInfo = logInfo;
    _alg = alg;
    _resourceType = resourceType;
    _resourceId = resourceId;
    _eventStatus = eventStatus;
    _remindedText = remindedText;
    _statusText = statusText;
    _statusTextColor = statusTextColor;
    _headline = headline;
    _subCount = subCount;
    _extInfo = extInfo;
}

  CalendarEvents.fromJson(dynamic json) {
    _id = json['id'];
    _eventType = json['eventType'];
    _onlineTime = json['onlineTime'];
    _offlineTime = json['offlineTime'];
    _tag = json['tag'];
    _title = json['title'];
    _imgUrl = json['imgUrl'];
    _canRemind = json['canRemind'];
    _reminded = json['reminded'];
    _targetUrl = json['targetUrl'];
    _remindText = json['remindText'];
    _logInfo = json['logInfo'];
    _alg = json['alg'];
    _resourceType = json['resourceType'];
    _resourceId = json['resourceId'];
    _eventStatus = json['eventStatus'];
    _remindedText = json['remindedText'];
    _statusText = json['statusText'];
    _statusTextColor = json['statusTextColor'];
    _headline = json['headline'];
    _subCount = json['subCount'];
    _extInfo = json['extInfo'];
  }
  String? _id;
  String? _eventType;
  num? _onlineTime;
  num? _offlineTime;
  String? _tag;
  String? _title;
  String? _imgUrl;
  bool? _canRemind;
  bool? _reminded;
  String? _targetUrl;
  String? _remindText;
  dynamic _logInfo;
  dynamic _alg;
  String? _resourceType;
  String? _resourceId;
  String? _eventStatus;
  String? _remindedText;
  dynamic _statusText;
  dynamic _statusTextColor;
  bool? _headline;
  num? _subCount;
  dynamic _extInfo;
CalendarEvents copyWith({  String? id,
  String? eventType,
  num? onlineTime,
  num? offlineTime,
  String? tag,
  String? title,
  String? imgUrl,
  bool? canRemind,
  bool? reminded,
  String? targetUrl,
  String? remindText,
  dynamic logInfo,
  dynamic alg,
  String? resourceType,
  String? resourceId,
  String? eventStatus,
  String? remindedText,
  dynamic statusText,
  dynamic statusTextColor,
  bool? headline,
  num? subCount,
  dynamic extInfo,
}) => CalendarEvents(  id: id ?? _id,
  eventType: eventType ?? _eventType,
  onlineTime: onlineTime ?? _onlineTime,
  offlineTime: offlineTime ?? _offlineTime,
  tag: tag ?? _tag,
  title: title ?? _title,
  imgUrl: imgUrl ?? _imgUrl,
  canRemind: canRemind ?? _canRemind,
  reminded: reminded ?? _reminded,
  targetUrl: targetUrl ?? _targetUrl,
  remindText: remindText ?? _remindText,
  logInfo: logInfo ?? _logInfo,
  alg: alg ?? _alg,
  resourceType: resourceType ?? _resourceType,
  resourceId: resourceId ?? _resourceId,
  eventStatus: eventStatus ?? _eventStatus,
  remindedText: remindedText ?? _remindedText,
  statusText: statusText ?? _statusText,
  statusTextColor: statusTextColor ?? _statusTextColor,
  headline: headline ?? _headline,
  subCount: subCount ?? _subCount,
  extInfo: extInfo ?? _extInfo,
);
  String? get id => _id;
  String? get eventType => _eventType;
  num? get onlineTime => _onlineTime;
  num? get offlineTime => _offlineTime;
  String? get tag => _tag;
  String? get title => _title;
  String? get imgUrl => _imgUrl;
  bool? get canRemind => _canRemind;
  bool? get reminded => _reminded;
  String? get targetUrl => _targetUrl;
  String? get remindText => _remindText;
  dynamic get logInfo => _logInfo;
  dynamic get alg => _alg;
  String? get resourceType => _resourceType;
  String? get resourceId => _resourceId;
  String? get eventStatus => _eventStatus;
  String? get remindedText => _remindedText;
  dynamic get statusText => _statusText;
  dynamic get statusTextColor => _statusTextColor;
  bool? get headline => _headline;
  num? get subCount => _subCount;
  dynamic get extInfo => _extInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['eventType'] = _eventType;
    map['onlineTime'] = _onlineTime;
    map['offlineTime'] = _offlineTime;
    map['tag'] = _tag;
    map['title'] = _title;
    map['imgUrl'] = _imgUrl;
    map['canRemind'] = _canRemind;
    map['reminded'] = _reminded;
    map['targetUrl'] = _targetUrl;
    map['remindText'] = _remindText;
    map['logInfo'] = _logInfo;
    map['alg'] = _alg;
    map['resourceType'] = _resourceType;
    map['resourceId'] = _resourceId;
    map['eventStatus'] = _eventStatus;
    map['remindedText'] = _remindedText;
    map['statusText'] = _statusText;
    map['statusTextColor'] = _statusTextColor;
    map['headline'] = _headline;
    map['subCount'] = _subCount;
    map['extInfo'] = _extInfo;
    return map;
  }

}