class TextUtils {
  static String getSongNum(num number) {
    if (number > 10000) {
      return "${(number / 10000).ceil()}万";
    } else {
      return "${number}";
    }
  }
}
