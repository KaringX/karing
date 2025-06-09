extension DurationExtension on Duration {
  String get formatLikeDHMS {
    String result = "";
    List<String> dur = toString().split(".")[0].split(":");
    if (dur.length == 3) {
      int h = int.parse(dur[0]);
      int m = int.parse(dur[1]);
      int s = int.parse(dur[2]);
      if (h != 0 || m != 0 || s != 0) {
        if (h != 0) {
          result += "${h}h";
        }
        if (m != 0) {
          result += "${m}m";
        }
        if (s != 0) {
          result += "${s}s";
        }
      }
    }
    return result;
  }
}
