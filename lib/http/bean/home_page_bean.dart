class HomePageBean {
  HomePageBean({
      num? code,
      Data? data,
      String? message,
      Trp? trp,}){
    _code = code;
    _data = data;
    _message = message;
    _trp = trp;
}

  HomePageBean.fromJson(dynamic json) {
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
    _trp = json['trp'] != null ? Trp.fromJson(json['trp']) : null;
  }
  num? _code;
  Data? _data;
  String? _message;
  Trp? _trp;
HomePageBean copyWith({  num? code,
  Data? data,
  String? message,
  Trp? trp,
}) => HomePageBean(  code: code ?? _code,
  data: data ?? _data,
  message: message ?? _message,
  trp: trp ?? _trp,
);
  num? get code => _code;
  Data? get data => _data;
  String? get message => _message;
  Trp? get trp => _trp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    if (_trp != null) {
      map['trp'] = _trp?.toJson();
    }
    return map;
  }

}

class Trp {
  Trp({
      List<String>? rules,}){
    _rules = rules;
}

  Trp.fromJson(dynamic json) {
    _rules = json['rules'] != null ? json['rules'].cast<String>() : [];
  }
  List<String>? _rules;
Trp copyWith({  List<String>? rules,
}) => Trp(  rules: rules ?? _rules,
);
  List<String>? get rules => _rules;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rules'] = _rules;
    return map;
  }

}

class Data {
  Data({
      String? cursor,
      List<Blocks>? blocks,
      bool? hasMore,
      dynamic blockUUIDs,
      PageConfig? pageConfig,
      GuideToast? guideToast,
      dynamic internalTest,
      List<dynamic>? titles,
      dynamic blockCodeOrderList,
      String? exposedResource,
      bool? demote,}){
    _cursor = cursor;
    _blocks = blocks;
    _hasMore = hasMore;
    _blockUUIDs = blockUUIDs;
    _pageConfig = pageConfig;
    _guideToast = guideToast;
    _internalTest = internalTest;
    _titles = titles;
    _blockCodeOrderList = blockCodeOrderList;
    _exposedResource = exposedResource;
    _demote = demote;
}

  Data.fromJson(dynamic json) {
    _cursor = json['cursor'];
    if (json['blocks'] != null) {
      _blocks = [];
      json['blocks'].forEach((v) {
        _blocks?.add(Blocks.fromJson(v));
      });
    }
    _hasMore = json['hasMore'];
    _blockUUIDs = json['blockUUIDs'];
    _pageConfig = json['pageConfig'] != null ? PageConfig.fromJson(json['pageConfig']) : null;
    _guideToast = json['guideToast'] != null ? GuideToast.fromJson(json['guideToast']) : null;
    _internalTest = json['internalTest'];
    if (json['titles'] != null) {
      _titles = [];
      json['titles'].forEach((v) {
        _titles?.add(Dynamic.fromJson(v));
      });
    }
    _blockCodeOrderList = json['blockCodeOrderList'];
    _exposedResource = json['exposedResource'];
    _demote = json['demote'];
  }
  String? _cursor;
  List<Blocks>? _blocks;
  bool? _hasMore;
  dynamic _blockUUIDs;
  PageConfig? _pageConfig;
  GuideToast? _guideToast;
  dynamic _internalTest;
  List<dynamic>? _titles;
  dynamic _blockCodeOrderList;
  String? _exposedResource;
  bool? _demote;
Data copyWith({  String? cursor,
  List<Blocks>? blocks,
  bool? hasMore,
  dynamic blockUUIDs,
  PageConfig? pageConfig,
  GuideToast? guideToast,
  dynamic internalTest,
  List<dynamic>? titles,
  dynamic blockCodeOrderList,
  String? exposedResource,
  bool? demote,
}) => Data(  cursor: cursor ?? _cursor,
  blocks: blocks ?? _blocks,
  hasMore: hasMore ?? _hasMore,
  blockUUIDs: blockUUIDs ?? _blockUUIDs,
  pageConfig: pageConfig ?? _pageConfig,
  guideToast: guideToast ?? _guideToast,
  internalTest: internalTest ?? _internalTest,
  titles: titles ?? _titles,
  blockCodeOrderList: blockCodeOrderList ?? _blockCodeOrderList,
  exposedResource: exposedResource ?? _exposedResource,
  demote: demote ?? _demote,
);
  String? get cursor => _cursor;
  List<Blocks>? get blocks => _blocks;
  bool? get hasMore => _hasMore;
  dynamic get blockUUIDs => _blockUUIDs;
  PageConfig? get pageConfig => _pageConfig;
  GuideToast? get guideToast => _guideToast;
  dynamic get internalTest => _internalTest;
  List<dynamic>? get titles => _titles;
  dynamic get blockCodeOrderList => _blockCodeOrderList;
  String? get exposedResource => _exposedResource;
  bool? get demote => _demote;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cursor'] = _cursor;
    if (_blocks != null) {
      map['blocks'] = _blocks?.map((v) => v.toJson()).toList();
    }
    map['hasMore'] = _hasMore;
    map['blockUUIDs'] = _blockUUIDs;
    if (_pageConfig != null) {
      map['pageConfig'] = _pageConfig?.toJson();
    }
    if (_guideToast != null) {
      map['guideToast'] = _guideToast?.toJson();
    }
    map['internalTest'] = _internalTest;
    if (_titles != null) {
      map['titles'] = _titles?.map((v) => v.toJson()).toList();
    }
    map['blockCodeOrderList'] = _blockCodeOrderList;
    map['exposedResource'] = _exposedResource;
    map['demote'] = _demote;
    return map;
  }

}

class GuideToast {
  GuideToast({
      bool? hasGuideToast,
      List<dynamic>? toastList,}){
    _hasGuideToast = hasGuideToast;
    _toastList = toastList;
}

  GuideToast.fromJson(dynamic json) {
    _hasGuideToast = json['hasGuideToast'];
    if (json['toastList'] != null) {
      _toastList = [];
      json['toastList'].forEach((v) {
        _toastList?.add(Dynamic.fromJson(v));
      });
    }
  }
  bool? _hasGuideToast;
  List<dynamic>? _toastList;
GuideToast copyWith({  bool? hasGuideToast,
  List<dynamic>? toastList,
}) => GuideToast(  hasGuideToast: hasGuideToast ?? _hasGuideToast,
  toastList: toastList ?? _toastList,
);
  bool? get hasGuideToast => _hasGuideToast;
  List<dynamic>? get toastList => _toastList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hasGuideToast'] = _hasGuideToast;
    if (_toastList != null) {
      map['toastList'] = _toastList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class PageConfig {
  PageConfig({
      String? refreshToast,
      String? nodataToast,
      num? refreshInterval,
      dynamic title,
      bool? fullscreen,
      List<String>? abtest,
      List<String>? songLabelMarkPriority,
      num? songLabelMarkLimit,
      String? homepageMode,
      bool? showModeEntry,
      dynamic orderInfo,}){
    _refreshToast = refreshToast;
    _nodataToast = nodataToast;
    _refreshInterval = refreshInterval;
    _title = title;
    _fullscreen = fullscreen;
    _abtest = abtest;
    _songLabelMarkPriority = songLabelMarkPriority;
    _songLabelMarkLimit = songLabelMarkLimit;
    _homepageMode = homepageMode;
    _showModeEntry = showModeEntry;
    _orderInfo = orderInfo;
}

  PageConfig.fromJson(dynamic json) {
    _refreshToast = json['refreshToast'];
    _nodataToast = json['nodataToast'];
    _refreshInterval = json['refreshInterval'];
    _title = json['title'];
    _fullscreen = json['fullscreen'];
    _abtest = json['abtest'] != null ? json['abtest'].cast<String>() : [];
    _songLabelMarkPriority = json['songLabelMarkPriority'] != null ? json['songLabelMarkPriority'].cast<String>() : [];
    _songLabelMarkLimit = json['songLabelMarkLimit'];
    _homepageMode = json['homepageMode'];
    _showModeEntry = json['showModeEntry'];
    _orderInfo = json['orderInfo'];
  }
  String? _refreshToast;
  String? _nodataToast;
  num? _refreshInterval;
  dynamic _title;
  bool? _fullscreen;
  List<String>? _abtest;
  List<String>? _songLabelMarkPriority;
  num? _songLabelMarkLimit;
  String? _homepageMode;
  bool? _showModeEntry;
  dynamic _orderInfo;
PageConfig copyWith({  String? refreshToast,
  String? nodataToast,
  num? refreshInterval,
  dynamic title,
  bool? fullscreen,
  List<String>? abtest,
  List<String>? songLabelMarkPriority,
  num? songLabelMarkLimit,
  String? homepageMode,
  bool? showModeEntry,
  dynamic orderInfo,
}) => PageConfig(  refreshToast: refreshToast ?? _refreshToast,
  nodataToast: nodataToast ?? _nodataToast,
  refreshInterval: refreshInterval ?? _refreshInterval,
  title: title ?? _title,
  fullscreen: fullscreen ?? _fullscreen,
  abtest: abtest ?? _abtest,
  songLabelMarkPriority: songLabelMarkPriority ?? _songLabelMarkPriority,
  songLabelMarkLimit: songLabelMarkLimit ?? _songLabelMarkLimit,
  homepageMode: homepageMode ?? _homepageMode,
  showModeEntry: showModeEntry ?? _showModeEntry,
  orderInfo: orderInfo ?? _orderInfo,
);
  String? get refreshToast => _refreshToast;
  String? get nodataToast => _nodataToast;
  num? get refreshInterval => _refreshInterval;
  dynamic get title => _title;
  bool? get fullscreen => _fullscreen;
  List<String>? get abtest => _abtest;
  List<String>? get songLabelMarkPriority => _songLabelMarkPriority;
  num? get songLabelMarkLimit => _songLabelMarkLimit;
  String? get homepageMode => _homepageMode;
  bool? get showModeEntry => _showModeEntry;
  dynamic get orderInfo => _orderInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['refreshToast'] = _refreshToast;
    map['nodataToast'] = _nodataToast;
    map['refreshInterval'] = _refreshInterval;
    map['title'] = _title;
    map['fullscreen'] = _fullscreen;
    map['abtest'] = _abtest;
    map['songLabelMarkPriority'] = _songLabelMarkPriority;
    map['songLabelMarkLimit'] = _songLabelMarkLimit;
    map['homepageMode'] = _homepageMode;
    map['showModeEntry'] = _showModeEntry;
    map['orderInfo'] = _orderInfo;
    return map;
  }

}

class Blocks {
  Blocks({
      String? blockCode,
      String? showType,
      num? dislikeShowType,
      ExtInfo? extInfo,
      bool? canClose,
      num? blockStyle,
      bool? canFeedback,
      bool? blockDemote,
      num? sort,}){
    _blockCode = blockCode;
    _showType = showType;
    _dislikeShowType = dislikeShowType;
    _extInfo = extInfo;
    _canClose = canClose;
    _blockStyle = blockStyle;
    _canFeedback = canFeedback;
    _blockDemote = blockDemote;
    _sort = sort;
}

  Blocks.fromJson(dynamic json) {
    _blockCode = json['blockCode'];
    _showType = json['showType'];
    _dislikeShowType = json['dislikeShowType'];
    _extInfo = json['extInfo'] != null ? ExtInfo.fromJson(json['extInfo']) : null;
    _canClose = json['canClose'];
    _blockStyle = json['blockStyle'];
    _canFeedback = json['canFeedback'];
    _blockDemote = json['blockDemote'];
    _sort = json['sort'];
  }
  String? _blockCode;
  String? _showType;
  num? _dislikeShowType;
  ExtInfo? _extInfo;
  bool? _canClose;
  num? _blockStyle;
  bool? _canFeedback;
  bool? _blockDemote;
  num? _sort;
Blocks copyWith({  String? blockCode,
  String? showType,
  num? dislikeShowType,
  ExtInfo? extInfo,
  bool? canClose,
  num? blockStyle,
  bool? canFeedback,
  bool? blockDemote,
  num? sort,
}) => Blocks(  blockCode: blockCode ?? _blockCode,
  showType: showType ?? _showType,
  dislikeShowType: dislikeShowType ?? _dislikeShowType,
  extInfo: extInfo ?? _extInfo,
  canClose: canClose ?? _canClose,
  blockStyle: blockStyle ?? _blockStyle,
  canFeedback: canFeedback ?? _canFeedback,
  blockDemote: blockDemote ?? _blockDemote,
  sort: sort ?? _sort,
);
  String? get blockCode => _blockCode;
  String? get showType => _showType;
  num? get dislikeShowType => _dislikeShowType;
  ExtInfo? get extInfo => _extInfo;
  bool? get canClose => _canClose;
  num? get blockStyle => _blockStyle;
  bool? get canFeedback => _canFeedback;
  bool? get blockDemote => _blockDemote;
  num? get sort => _sort;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['blockCode'] = _blockCode;
    map['showType'] = _showType;
    map['dislikeShowType'] = _dislikeShowType;
    if (_extInfo != null) {
      map['extInfo'] = _extInfo?.toJson();
    }
    map['canClose'] = _canClose;
    map['blockStyle'] = _blockStyle;
    map['canFeedback'] = _canFeedback;
    map['blockDemote'] = _blockDemote;
    map['sort'] = _sort;
    return map;
  }

}

class ExtInfo {
  ExtInfo({
      List<Banners>? banners,}){
    _banners = banners;
}

  ExtInfo.fromJson(dynamic json) {
    if (json['banners'] != null) {
      _banners = [];
      json['banners'].forEach((v) {
        _banners?.add(Banners.fromJson(v));
      });
    }
  }
  List<Banners>? _banners;
ExtInfo copyWith({  List<Banners>? banners,
}) => ExtInfo(  banners: banners ?? _banners,
);
  List<Banners>? get banners => _banners;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_banners != null) {
      map['banners'] = _banners?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Banners {
  Banners({
      dynamic adLocation,
      dynamic monitorImpress,
      String? bannerId,
      dynamic extMonitor,
      dynamic pid,
      String? pic,
      dynamic program,
      dynamic video,
      dynamic adurlV2,
      dynamic adDispatchJson,
      dynamic dynamicVideoData,
      dynamic monitorType,
      dynamic adid,
      String? titleColor,
      String? requestId,
      bool? exclusive,
      String? bannerBizType,
      String? scm,
      dynamic event,
      String? alg,
      String? sCtrp,
      Song? song,
      num? targetId,
      bool? showAdTag,
      dynamic adSource,
      dynamic showContext,
      num? targetType,
      String? typeTitle,
      dynamic url,
      String? encodeId,
      dynamic extMonitorInfo,
      dynamic monitorClick,
      dynamic monitorImpressList,
      dynamic logContext,
      dynamic monitorBlackList,
      dynamic monitorClickList,}){
    _adLocation = adLocation;
    _monitorImpress = monitorImpress;
    _bannerId = bannerId;
    _extMonitor = extMonitor;
    _pid = pid;
    _pic = pic;
    _program = program;
    _video = video;
    _adurlV2 = adurlV2;
    _adDispatchJson = adDispatchJson;
    _dynamicVideoData = dynamicVideoData;
    _monitorType = monitorType;
    _adid = adid;
    _titleColor = titleColor;
    _requestId = requestId;
    _exclusive = exclusive;
    _bannerBizType = bannerBizType;
    _scm = scm;
    _event = event;
    _alg = alg;
    _sCtrp = sCtrp;
    _song = song;
    _targetId = targetId;
    _showAdTag = showAdTag;
    _adSource = adSource;
    _showContext = showContext;
    _targetType = targetType;
    _typeTitle = typeTitle;
    _url = url;
    _encodeId = encodeId;
    _extMonitorInfo = extMonitorInfo;
    _monitorClick = monitorClick;
    _monitorImpressList = monitorImpressList;
    _logContext = logContext;
    _monitorBlackList = monitorBlackList;
    _monitorClickList = monitorClickList;
}

  Banners.fromJson(dynamic json) {
    _adLocation = json['adLocation'];
    _monitorImpress = json['monitorImpress'];
    _bannerId = json['bannerId'];
    _extMonitor = json['extMonitor'];
    _pid = json['pid'];
    _pic = json['pic'];
    _program = json['program'];
    _video = json['video'];
    _adurlV2 = json['adurlV2'];
    _adDispatchJson = json['adDispatchJson'];
    _dynamicVideoData = json['dynamicVideoData'];
    _monitorType = json['monitorType'];
    _adid = json['adid'];
    _titleColor = json['titleColor'];
    _requestId = json['requestId'];
    _exclusive = json['exclusive'];
    _bannerBizType = json['bannerBizType'];
    _scm = json['scm'];
    _event = json['event'];
    _alg = json['alg'];
    _sCtrp = json['s_ctrp'];
    _song = json['song'] != null ? Song.fromJson(json['song']) : null;
    _targetId = json['targetId'];
    _showAdTag = json['showAdTag'];
    _adSource = json['adSource'];
    _showContext = json['showContext'];
    _targetType = json['targetType'];
    _typeTitle = json['typeTitle'];
    _url = json['url'];
    _encodeId = json['encodeId'];
    _extMonitorInfo = json['extMonitorInfo'];
    _monitorClick = json['monitorClick'];
    _monitorImpressList = json['monitorImpressList'];
    _logContext = json['logContext'];
    _monitorBlackList = json['monitorBlackList'];
    _monitorClickList = json['monitorClickList'];
  }
  dynamic _adLocation;
  dynamic _monitorImpress;
  String? _bannerId;
  dynamic _extMonitor;
  dynamic _pid;
  String? _pic;
  dynamic _program;
  dynamic _video;
  dynamic _adurlV2;
  dynamic _adDispatchJson;
  dynamic _dynamicVideoData;
  dynamic _monitorType;
  dynamic _adid;
  String? _titleColor;
  String? _requestId;
  bool? _exclusive;
  String? _bannerBizType;
  String? _scm;
  dynamic _event;
  String? _alg;
  String? _sCtrp;
  Song? _song;
  num? _targetId;
  bool? _showAdTag;
  dynamic _adSource;
  dynamic _showContext;
  num? _targetType;
  String? _typeTitle;
  dynamic _url;
  String? _encodeId;
  dynamic _extMonitorInfo;
  dynamic _monitorClick;
  dynamic _monitorImpressList;
  dynamic _logContext;
  dynamic _monitorBlackList;
  dynamic _monitorClickList;
Banners copyWith({  dynamic adLocation,
  dynamic monitorImpress,
  String? bannerId,
  dynamic extMonitor,
  dynamic pid,
  String? pic,
  dynamic program,
  dynamic video,
  dynamic adurlV2,
  dynamic adDispatchJson,
  dynamic dynamicVideoData,
  dynamic monitorType,
  dynamic adid,
  String? titleColor,
  String? requestId,
  bool? exclusive,
  String? bannerBizType,
  String? scm,
  dynamic event,
  String? alg,
  String? sCtrp,
  Song? song,
  num? targetId,
  bool? showAdTag,
  dynamic adSource,
  dynamic showContext,
  num? targetType,
  String? typeTitle,
  dynamic url,
  String? encodeId,
  dynamic extMonitorInfo,
  dynamic monitorClick,
  dynamic monitorImpressList,
  dynamic logContext,
  dynamic monitorBlackList,
  dynamic monitorClickList,
}) => Banners(  adLocation: adLocation ?? _adLocation,
  monitorImpress: monitorImpress ?? _monitorImpress,
  bannerId: bannerId ?? _bannerId,
  extMonitor: extMonitor ?? _extMonitor,
  pid: pid ?? _pid,
  pic: pic ?? _pic,
  program: program ?? _program,
  video: video ?? _video,
  adurlV2: adurlV2 ?? _adurlV2,
  adDispatchJson: adDispatchJson ?? _adDispatchJson,
  dynamicVideoData: dynamicVideoData ?? _dynamicVideoData,
  monitorType: monitorType ?? _monitorType,
  adid: adid ?? _adid,
  titleColor: titleColor ?? _titleColor,
  requestId: requestId ?? _requestId,
  exclusive: exclusive ?? _exclusive,
  bannerBizType: bannerBizType ?? _bannerBizType,
  scm: scm ?? _scm,
  event: event ?? _event,
  alg: alg ?? _alg,
  sCtrp: sCtrp ?? _sCtrp,
  song: song ?? _song,
  targetId: targetId ?? _targetId,
  showAdTag: showAdTag ?? _showAdTag,
  adSource: adSource ?? _adSource,
  showContext: showContext ?? _showContext,
  targetType: targetType ?? _targetType,
  typeTitle: typeTitle ?? _typeTitle,
  url: url ?? _url,
  encodeId: encodeId ?? _encodeId,
  extMonitorInfo: extMonitorInfo ?? _extMonitorInfo,
  monitorClick: monitorClick ?? _monitorClick,
  monitorImpressList: monitorImpressList ?? _monitorImpressList,
  logContext: logContext ?? _logContext,
  monitorBlackList: monitorBlackList ?? _monitorBlackList,
  monitorClickList: monitorClickList ?? _monitorClickList,
);
  dynamic get adLocation => _adLocation;
  dynamic get monitorImpress => _monitorImpress;
  String? get bannerId => _bannerId;
  dynamic get extMonitor => _extMonitor;
  dynamic get pid => _pid;
  String? get pic => _pic;
  dynamic get program => _program;
  dynamic get video => _video;
  dynamic get adurlV2 => _adurlV2;
  dynamic get adDispatchJson => _adDispatchJson;
  dynamic get dynamicVideoData => _dynamicVideoData;
  dynamic get monitorType => _monitorType;
  dynamic get adid => _adid;
  String? get titleColor => _titleColor;
  String? get requestId => _requestId;
  bool? get exclusive => _exclusive;
  String? get bannerBizType => _bannerBizType;
  String? get scm => _scm;
  dynamic get event => _event;
  String? get alg => _alg;
  String? get sCtrp => _sCtrp;
  Song? get song => _song;
  num? get targetId => _targetId;
  bool? get showAdTag => _showAdTag;
  dynamic get adSource => _adSource;
  dynamic get showContext => _showContext;
  num? get targetType => _targetType;
  String? get typeTitle => _typeTitle;
  dynamic get url => _url;
  String? get encodeId => _encodeId;
  dynamic get extMonitorInfo => _extMonitorInfo;
  dynamic get monitorClick => _monitorClick;
  dynamic get monitorImpressList => _monitorImpressList;
  dynamic get logContext => _logContext;
  dynamic get monitorBlackList => _monitorBlackList;
  dynamic get monitorClickList => _monitorClickList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adLocation'] = _adLocation;
    map['monitorImpress'] = _monitorImpress;
    map['bannerId'] = _bannerId;
    map['extMonitor'] = _extMonitor;
    map['pid'] = _pid;
    map['pic'] = _pic;
    map['program'] = _program;
    map['video'] = _video;
    map['adurlV2'] = _adurlV2;
    map['adDispatchJson'] = _adDispatchJson;
    map['dynamicVideoData'] = _dynamicVideoData;
    map['monitorType'] = _monitorType;
    map['adid'] = _adid;
    map['titleColor'] = _titleColor;
    map['requestId'] = _requestId;
    map['exclusive'] = _exclusive;
    map['bannerBizType'] = _bannerBizType;
    map['scm'] = _scm;
    map['event'] = _event;
    map['alg'] = _alg;
    map['s_ctrp'] = _sCtrp;
    if (_song != null) {
      map['song'] = _song?.toJson();
    }
    map['targetId'] = _targetId;
    map['showAdTag'] = _showAdTag;
    map['adSource'] = _adSource;
    map['showContext'] = _showContext;
    map['targetType'] = _targetType;
    map['typeTitle'] = _typeTitle;
    map['url'] = _url;
    map['encodeId'] = _encodeId;
    map['extMonitorInfo'] = _extMonitorInfo;
    map['monitorClick'] = _monitorClick;
    map['monitorImpressList'] = _monitorImpressList;
    map['logContext'] = _logContext;
    map['monitorBlackList'] = _monitorBlackList;
    map['monitorClickList'] = _monitorClickList;
    return map;
  }

}

class Song {
  Song({
      String? name,
      num? id,
      num? pst,
      num? t,
      List<Ar>? ar,
      List<dynamic>? alia,
      num? pop,
      num? st,
      String? rt,
      num? fee,
      num? v,
      dynamic crbt,
      String? cf,
      Al? al,
      num? dt,
      H? h,
      M? m,
      L? l,
      Sq? sq,
      Hr? hr,
      dynamic a,
      String? cd,
      num? no,
      dynamic rtUrl,
      num? ftype,
      List<dynamic>? rtUrls,
      num? djId,
      num? copyright,
      num? sId,
      num? mark,
      num? originCoverType,
      dynamic originSongSimpleData,
      dynamic tagPicList,
      bool? resourceState,
      num? version,
      dynamic songJumpInfo,
      dynamic entertainmentTags,
      num? single,
      dynamic noCopyrightRcmd,
      num? rtype,
      dynamic rurl,
      num? mst,
      num? cp,
      num? mv,
      num? publishTime,
      VideoInfo? videoInfo,
      String? alg,}){
    _name = name;
    _id = id;
    _pst = pst;
    _t = t;
    _ar = ar;
    _alia = alia;
    _pop = pop;
    _st = st;
    _rt = rt;
    _fee = fee;
    _v = v;
    _crbt = crbt;
    _cf = cf;
    _al = al;
    _dt = dt;
    _h = h;
    _m = m;
    _l = l;
    _sq = sq;
    _hr = hr;
    _a = a;
    _cd = cd;
    _no = no;
    _rtUrl = rtUrl;
    _ftype = ftype;
    _rtUrls = rtUrls;
    _djId = djId;
    _copyright = copyright;
    _sId = sId;
    _mark = mark;
    _originCoverType = originCoverType;
    _originSongSimpleData = originSongSimpleData;
    _tagPicList = tagPicList;
    _resourceState = resourceState;
    _version = version;
    _songJumpInfo = songJumpInfo;
    _entertainmentTags = entertainmentTags;
    _single = single;
    _noCopyrightRcmd = noCopyrightRcmd;
    _rtype = rtype;
    _rurl = rurl;
    _mst = mst;
    _cp = cp;
    _mv = mv;
    _publishTime = publishTime;
    _videoInfo = videoInfo;
    _alg = alg;
}

  Song.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
    _pst = json['pst'];
    _t = json['t'];
    if (json['ar'] != null) {
      _ar = [];
      json['ar'].forEach((v) {
        _ar?.add(Ar.fromJson(v));
      });
    }
    if (json['alia'] != null) {
      _alia = [];
      json['alia'].forEach((v) {
        _alia?.add(Dynamic.fromJson(v));
      });
    }
    _pop = json['pop'];
    _st = json['st'];
    _rt = json['rt'];
    _fee = json['fee'];
    _v = json['v'];
    _crbt = json['crbt'];
    _cf = json['cf'];
    _al = json['al'] != null ? Al.fromJson(json['al']) : null;
    _dt = json['dt'];
    _h = json['h'] != null ? H.fromJson(json['h']) : null;
    _m = json['m'] != null ? M.fromJson(json['m']) : null;
    _l = json['l'] != null ? L.fromJson(json['l']) : null;
    _sq = json['sq'] != null ? Sq.fromJson(json['sq']) : null;
    _hr = json['hr'] != null ? Hr.fromJson(json['hr']) : null;
    _a = json['a'];
    _cd = json['cd'];
    _no = json['no'];
    _rtUrl = json['rtUrl'];
    _ftype = json['ftype'];
    if (json['rtUrls'] != null) {
      _rtUrls = [];
      json['rtUrls'].forEach((v) {
        _rtUrls?.add(Dynamic.fromJson(v));
      });
    }
    _djId = json['djId'];
    _copyright = json['copyright'];
    _sId = json['s_id'];
    _mark = json['mark'];
    _originCoverType = json['originCoverType'];
    _originSongSimpleData = json['originSongSimpleData'];
    _tagPicList = json['tagPicList'];
    _resourceState = json['resourceState'];
    _version = json['version'];
    _songJumpInfo = json['songJumpInfo'];
    _entertainmentTags = json['entertainmentTags'];
    _single = json['single'];
    _noCopyrightRcmd = json['noCopyrightRcmd'];
    _rtype = json['rtype'];
    _rurl = json['rurl'];
    _mst = json['mst'];
    _cp = json['cp'];
    _mv = json['mv'];
    _publishTime = json['publishTime'];
    _videoInfo = json['videoInfo'] != null ? VideoInfo.fromJson(json['videoInfo']) : null;
    _alg = json['alg'];
  }
  String? _name;
  num? _id;
  num? _pst;
  num? _t;
  List<Ar>? _ar;
  List<dynamic>? _alia;
  num? _pop;
  num? _st;
  String? _rt;
  num? _fee;
  num? _v;
  dynamic _crbt;
  String? _cf;
  Al? _al;
  num? _dt;
  H? _h;
  M? _m;
  L? _l;
  Sq? _sq;
  Hr? _hr;
  dynamic _a;
  String? _cd;
  num? _no;
  dynamic _rtUrl;
  num? _ftype;
  List<dynamic>? _rtUrls;
  num? _djId;
  num? _copyright;
  num? _sId;
  num? _mark;
  num? _originCoverType;
  dynamic _originSongSimpleData;
  dynamic _tagPicList;
  bool? _resourceState;
  num? _version;
  dynamic _songJumpInfo;
  dynamic _entertainmentTags;
  num? _single;
  dynamic _noCopyrightRcmd;
  num? _rtype;
  dynamic _rurl;
  num? _mst;
  num? _cp;
  num? _mv;
  num? _publishTime;
  VideoInfo? _videoInfo;
  String? _alg;
Song copyWith({  String? name,
  num? id,
  num? pst,
  num? t,
  List<Ar>? ar,
  List<dynamic>? alia,
  num? pop,
  num? st,
  String? rt,
  num? fee,
  num? v,
  dynamic crbt,
  String? cf,
  Al? al,
  num? dt,
  H? h,
  M? m,
  L? l,
  Sq? sq,
  Hr? hr,
  dynamic a,
  String? cd,
  num? no,
  dynamic rtUrl,
  num? ftype,
  List<dynamic>? rtUrls,
  num? djId,
  num? copyright,
  num? sId,
  num? mark,
  num? originCoverType,
  dynamic originSongSimpleData,
  dynamic tagPicList,
  bool? resourceState,
  num? version,
  dynamic songJumpInfo,
  dynamic entertainmentTags,
  num? single,
  dynamic noCopyrightRcmd,
  num? rtype,
  dynamic rurl,
  num? mst,
  num? cp,
  num? mv,
  num? publishTime,
  VideoInfo? videoInfo,
  String? alg,
}) => Song(  name: name ?? _name,
  id: id ?? _id,
  pst: pst ?? _pst,
  t: t ?? _t,
  ar: ar ?? _ar,
  alia: alia ?? _alia,
  pop: pop ?? _pop,
  st: st ?? _st,
  rt: rt ?? _rt,
  fee: fee ?? _fee,
  v: v ?? _v,
  crbt: crbt ?? _crbt,
  cf: cf ?? _cf,
  al: al ?? _al,
  dt: dt ?? _dt,
  h: h ?? _h,
  m: m ?? _m,
  l: l ?? _l,
  sq: sq ?? _sq,
  hr: hr ?? _hr,
  a: a ?? _a,
  cd: cd ?? _cd,
  no: no ?? _no,
  rtUrl: rtUrl ?? _rtUrl,
  ftype: ftype ?? _ftype,
  rtUrls: rtUrls ?? _rtUrls,
  djId: djId ?? _djId,
  copyright: copyright ?? _copyright,
  sId: sId ?? _sId,
  mark: mark ?? _mark,
  originCoverType: originCoverType ?? _originCoverType,
  originSongSimpleData: originSongSimpleData ?? _originSongSimpleData,
  tagPicList: tagPicList ?? _tagPicList,
  resourceState: resourceState ?? _resourceState,
  version: version ?? _version,
  songJumpInfo: songJumpInfo ?? _songJumpInfo,
  entertainmentTags: entertainmentTags ?? _entertainmentTags,
  single: single ?? _single,
  noCopyrightRcmd: noCopyrightRcmd ?? _noCopyrightRcmd,
  rtype: rtype ?? _rtype,
  rurl: rurl ?? _rurl,
  mst: mst ?? _mst,
  cp: cp ?? _cp,
  mv: mv ?? _mv,
  publishTime: publishTime ?? _publishTime,
  videoInfo: videoInfo ?? _videoInfo,
  alg: alg ?? _alg,
);
  String? get name => _name;
  num? get id => _id;
  num? get pst => _pst;
  num? get t => _t;
  List<Ar>? get ar => _ar;
  List<dynamic>? get alia => _alia;
  num? get pop => _pop;
  num? get st => _st;
  String? get rt => _rt;
  num? get fee => _fee;
  num? get v => _v;
  dynamic get crbt => _crbt;
  String? get cf => _cf;
  Al? get al => _al;
  num? get dt => _dt;
  H? get h => _h;
  M? get m => _m;
  L? get l => _l;
  Sq? get sq => _sq;
  Hr? get hr => _hr;
  dynamic get a => _a;
  String? get cd => _cd;
  num? get no => _no;
  dynamic get rtUrl => _rtUrl;
  num? get ftype => _ftype;
  List<dynamic>? get rtUrls => _rtUrls;
  num? get djId => _djId;
  num? get copyright => _copyright;
  num? get sId => _sId;
  num? get mark => _mark;
  num? get originCoverType => _originCoverType;
  dynamic get originSongSimpleData => _originSongSimpleData;
  dynamic get tagPicList => _tagPicList;
  bool? get resourceState => _resourceState;
  num? get version => _version;
  dynamic get songJumpInfo => _songJumpInfo;
  dynamic get entertainmentTags => _entertainmentTags;
  num? get single => _single;
  dynamic get noCopyrightRcmd => _noCopyrightRcmd;
  num? get rtype => _rtype;
  dynamic get rurl => _rurl;
  num? get mst => _mst;
  num? get cp => _cp;
  num? get mv => _mv;
  num? get publishTime => _publishTime;
  VideoInfo? get videoInfo => _videoInfo;
  String? get alg => _alg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    map['pst'] = _pst;
    map['t'] = _t;
    if (_ar != null) {
      map['ar'] = _ar?.map((v) => v.toJson()).toList();
    }
    if (_alia != null) {
      map['alia'] = _alia?.map((v) => v.toJson()).toList();
    }
    map['pop'] = _pop;
    map['st'] = _st;
    map['rt'] = _rt;
    map['fee'] = _fee;
    map['v'] = _v;
    map['crbt'] = _crbt;
    map['cf'] = _cf;
    if (_al != null) {
      map['al'] = _al?.toJson();
    }
    map['dt'] = _dt;
    if (_h != null) {
      map['h'] = _h?.toJson();
    }
    if (_m != null) {
      map['m'] = _m?.toJson();
    }
    if (_l != null) {
      map['l'] = _l?.toJson();
    }
    if (_sq != null) {
      map['sq'] = _sq?.toJson();
    }
    if (_hr != null) {
      map['hr'] = _hr?.toJson();
    }
    map['a'] = _a;
    map['cd'] = _cd;
    map['no'] = _no;
    map['rtUrl'] = _rtUrl;
    map['ftype'] = _ftype;
    if (_rtUrls != null) {
      map['rtUrls'] = _rtUrls?.map((v) => v.toJson()).toList();
    }
    map['djId'] = _djId;
    map['copyright'] = _copyright;
    map['s_id'] = _sId;
    map['mark'] = _mark;
    map['originCoverType'] = _originCoverType;
    map['originSongSimpleData'] = _originSongSimpleData;
    map['tagPicList'] = _tagPicList;
    map['resourceState'] = _resourceState;
    map['version'] = _version;
    map['songJumpInfo'] = _songJumpInfo;
    map['entertainmentTags'] = _entertainmentTags;
    map['single'] = _single;
    map['noCopyrightRcmd'] = _noCopyrightRcmd;
    map['rtype'] = _rtype;
    map['rurl'] = _rurl;
    map['mst'] = _mst;
    map['cp'] = _cp;
    map['mv'] = _mv;
    map['publishTime'] = _publishTime;
    if (_videoInfo != null) {
      map['videoInfo'] = _videoInfo?.toJson();
    }
    map['alg'] = _alg;
    return map;
  }

}

class VideoInfo {
  VideoInfo({
      bool? moreThanOne,
      dynamic video,}){
    _moreThanOne = moreThanOne;
    _video = video;
}

  VideoInfo.fromJson(dynamic json) {
    _moreThanOne = json['moreThanOne'];
    _video = json['video'];
  }
  bool? _moreThanOne;
  dynamic _video;
VideoInfo copyWith({  bool? moreThanOne,
  dynamic video,
}) => VideoInfo(  moreThanOne: moreThanOne ?? _moreThanOne,
  video: video ?? _video,
);
  bool? get moreThanOne => _moreThanOne;
  dynamic get video => _video;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['moreThanOne'] = _moreThanOne;
    map['video'] = _video;
    return map;
  }

}

class Hr {
  Hr({
      num? br,
      num? fid,
      num? size,
      num? vd,
      num? sr,}){
    _br = br;
    _fid = fid;
    _size = size;
    _vd = vd;
    _sr = sr;
}

  Hr.fromJson(dynamic json) {
    _br = json['br'];
    _fid = json['fid'];
    _size = json['size'];
    _vd = json['vd'];
    _sr = json['sr'];
  }
  num? _br;
  num? _fid;
  num? _size;
  num? _vd;
  num? _sr;
Hr copyWith({  num? br,
  num? fid,
  num? size,
  num? vd,
  num? sr,
}) => Hr(  br: br ?? _br,
  fid: fid ?? _fid,
  size: size ?? _size,
  vd: vd ?? _vd,
  sr: sr ?? _sr,
);
  num? get br => _br;
  num? get fid => _fid;
  num? get size => _size;
  num? get vd => _vd;
  num? get sr => _sr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['br'] = _br;
    map['fid'] = _fid;
    map['size'] = _size;
    map['vd'] = _vd;
    map['sr'] = _sr;
    return map;
  }

}

class Sq {
  Sq({
      num? br,
      num? fid,
      num? size,
      num? vd,
      num? sr,}){
    _br = br;
    _fid = fid;
    _size = size;
    _vd = vd;
    _sr = sr;
}

  Sq.fromJson(dynamic json) {
    _br = json['br'];
    _fid = json['fid'];
    _size = json['size'];
    _vd = json['vd'];
    _sr = json['sr'];
  }
  num? _br;
  num? _fid;
  num? _size;
  num? _vd;
  num? _sr;
Sq copyWith({  num? br,
  num? fid,
  num? size,
  num? vd,
  num? sr,
}) => Sq(  br: br ?? _br,
  fid: fid ?? _fid,
  size: size ?? _size,
  vd: vd ?? _vd,
  sr: sr ?? _sr,
);
  num? get br => _br;
  num? get fid => _fid;
  num? get size => _size;
  num? get vd => _vd;
  num? get sr => _sr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['br'] = _br;
    map['fid'] = _fid;
    map['size'] = _size;
    map['vd'] = _vd;
    map['sr'] = _sr;
    return map;
  }

}

class L {
  L({
      num? br,
      num? fid,
      num? size,
      num? vd,
      num? sr,}){
    _br = br;
    _fid = fid;
    _size = size;
    _vd = vd;
    _sr = sr;
}

  L.fromJson(dynamic json) {
    _br = json['br'];
    _fid = json['fid'];
    _size = json['size'];
    _vd = json['vd'];
    _sr = json['sr'];
  }
  num? _br;
  num? _fid;
  num? _size;
  num? _vd;
  num? _sr;
L copyWith({  num? br,
  num? fid,
  num? size,
  num? vd,
  num? sr,
}) => L(  br: br ?? _br,
  fid: fid ?? _fid,
  size: size ?? _size,
  vd: vd ?? _vd,
  sr: sr ?? _sr,
);
  num? get br => _br;
  num? get fid => _fid;
  num? get size => _size;
  num? get vd => _vd;
  num? get sr => _sr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['br'] = _br;
    map['fid'] = _fid;
    map['size'] = _size;
    map['vd'] = _vd;
    map['sr'] = _sr;
    return map;
  }

}

class M {
  M({
      num? br,
      num? fid,
      num? size,
      num? vd,
      num? sr,}){
    _br = br;
    _fid = fid;
    _size = size;
    _vd = vd;
    _sr = sr;
}

  M.fromJson(dynamic json) {
    _br = json['br'];
    _fid = json['fid'];
    _size = json['size'];
    _vd = json['vd'];
    _sr = json['sr'];
  }
  num? _br;
  num? _fid;
  num? _size;
  num? _vd;
  num? _sr;
M copyWith({  num? br,
  num? fid,
  num? size,
  num? vd,
  num? sr,
}) => M(  br: br ?? _br,
  fid: fid ?? _fid,
  size: size ?? _size,
  vd: vd ?? _vd,
  sr: sr ?? _sr,
);
  num? get br => _br;
  num? get fid => _fid;
  num? get size => _size;
  num? get vd => _vd;
  num? get sr => _sr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['br'] = _br;
    map['fid'] = _fid;
    map['size'] = _size;
    map['vd'] = _vd;
    map['sr'] = _sr;
    return map;
  }

}

class H {
  H({
      num? br,
      num? fid,
      num? size,
      num? vd,
      num? sr,}){
    _br = br;
    _fid = fid;
    _size = size;
    _vd = vd;
    _sr = sr;
}

  H.fromJson(dynamic json) {
    _br = json['br'];
    _fid = json['fid'];
    _size = json['size'];
    _vd = json['vd'];
    _sr = json['sr'];
  }
  num? _br;
  num? _fid;
  num? _size;
  num? _vd;
  num? _sr;
H copyWith({  num? br,
  num? fid,
  num? size,
  num? vd,
  num? sr,
}) => H(  br: br ?? _br,
  fid: fid ?? _fid,
  size: size ?? _size,
  vd: vd ?? _vd,
  sr: sr ?? _sr,
);
  num? get br => _br;
  num? get fid => _fid;
  num? get size => _size;
  num? get vd => _vd;
  num? get sr => _sr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['br'] = _br;
    map['fid'] = _fid;
    map['size'] = _size;
    map['vd'] = _vd;
    map['sr'] = _sr;
    return map;
  }

}

class Al {
  Al({
      num? id,
      String? name,
      String? picUrl,
      List<dynamic>? tns,
      String? picStr,
      num? pic,}){
    _id = id;
    _name = name;
    _picUrl = picUrl;
    _tns = tns;
    _picStr = picStr;
    _pic = pic;
}

  Al.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _picUrl = json['picUrl'];
    if (json['tns'] != null) {
      _tns = [];
      json['tns'].forEach((v) {
        _tns?.add(Dynamic.fromJson(v));
      });
    }
    _picStr = json['pic_str'];
    _pic = json['pic'];
  }
  num? _id;
  String? _name;
  String? _picUrl;
  List<dynamic>? _tns;
  String? _picStr;
  num? _pic;
Al copyWith({  num? id,
  String? name,
  String? picUrl,
  List<dynamic>? tns,
  String? picStr,
  num? pic,
}) => Al(  id: id ?? _id,
  name: name ?? _name,
  picUrl: picUrl ?? _picUrl,
  tns: tns ?? _tns,
  picStr: picStr ?? _picStr,
  pic: pic ?? _pic,
);
  num? get id => _id;
  String? get name => _name;
  String? get picUrl => _picUrl;
  List<dynamic>? get tns => _tns;
  String? get picStr => _picStr;
  num? get pic => _pic;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['picUrl'] = _picUrl;
    if (_tns != null) {
      map['tns'] = _tns?.map((v) => v.toJson()).toList();
    }
    map['pic_str'] = _picStr;
    map['pic'] = _pic;
    return map;
  }

}

class Ar {
  Ar({
      num? id,
      String? name,
      List<dynamic>? tns,
      List<dynamic>? alias,}){
    _id = id;
    _name = name;
    _tns = tns;
    _alias = alias;
}

  Ar.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    if (json['tns'] != null) {
      _tns = [];
      json['tns'].forEach((v) {
        _tns?.add(Dynamic.fromJson(v));
      });
    }
    if (json['alias'] != null) {
      _alias = [];
      json['alias'].forEach((v) {
        _alias?.add(Dynamic.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  List<dynamic>? _tns;
  List<dynamic>? _alias;
Ar copyWith({  num? id,
  String? name,
  List<dynamic>? tns,
  List<dynamic>? alias,
}) => Ar(  id: id ?? _id,
  name: name ?? _name,
  tns: tns ?? _tns,
  alias: alias ?? _alias,
);
  num? get id => _id;
  String? get name => _name;
  List<dynamic>? get tns => _tns;
  List<dynamic>? get alias => _alias;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_tns != null) {
      map['tns'] = _tns?.map((v) => v.toJson()).toList();
    }
    if (_alias != null) {
      map['alias'] = _alias?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}