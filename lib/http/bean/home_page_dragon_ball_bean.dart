class HomePageDragonBallBean {
  HomePageDragonBallBean({
      num? code, 
      List<IconDataBean>? data,
      String? message,}){
    _code = code;
    _data = data;
    _message = message;
}

  HomePageDragonBallBean.fromJson(dynamic json) {
    _code = json['code'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(IconDataBean.fromJson(v));
      });
    }
    _message = json['message'];
  }
  num? _code;
  List<IconDataBean>? _data;
  String? _message;
HomePageDragonBallBean copyWith({  num? code,
  List<IconDataBean>? data,
  String? message,
}) => HomePageDragonBallBean(  code: code ?? _code,
  data: data ?? _data,
  message: message ?? _message,
);
  num? get code => _code;
  List<IconDataBean>? get data => _data;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['message'] = _message;
    return map;
  }

}

class IconDataBean {
  IconDataBean({
      num? id, 
      String? name, 
      String? iconUrl, 
      String? url, 
      bool? skinSupport, 
      String? homepageMode, 
      dynamic resourceState,}){
    _id = id;
    _name = name;
    _iconUrl = iconUrl;
    _url = url;
    _skinSupport = skinSupport;
    _homepageMode = homepageMode;
    _resourceState = resourceState;
}

  IconDataBean.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _iconUrl = json['iconUrl'];
    _url = json['url'];
    _skinSupport = json['skinSupport'];
    _homepageMode = json['homepageMode'];
    _resourceState = json['resourceState'];
  }
  num? _id;
  String? _name;
  String? _iconUrl;
  String? _url;
  bool? _skinSupport;
  String? _homepageMode;
  dynamic _resourceState;
IconDataBean copyWith({  num? id,
  String? name,
  String? iconUrl,
  String? url,
  bool? skinSupport,
  String? homepageMode,
  dynamic resourceState,
}) => IconDataBean(  id: id ?? _id,
  name: name ?? _name,
  iconUrl: iconUrl ?? _iconUrl,
  url: url ?? _url,
  skinSupport: skinSupport ?? _skinSupport,
  homepageMode: homepageMode ?? _homepageMode,
  resourceState: resourceState ?? _resourceState,
);
  num? get id => _id;
  String? get name => _name;
  String? get iconUrl => _iconUrl;
  String? get url => _url;
  bool? get skinSupport => _skinSupport;
  String? get homepageMode => _homepageMode;
  dynamic get resourceState => _resourceState;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['iconUrl'] = _iconUrl;
    map['url'] = _url;
    map['skinSupport'] = _skinSupport;
    map['homepageMode'] = _homepageMode;
    map['resourceState'] = _resourceState;
    return map;
  }

}