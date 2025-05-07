class VersionCompareUtils {
  static int compareVersion(String ver1, String ver2) {
    List<String> v1 = ver1.split(".");
    List<String> v2 = ver2.split(".");
    if (v1.length == v2.length) {
      for (int i = 0; i < v1.length; ++i) {
        int n1 = int.parse(v1[i]);
        int n2 = int.parse(v2[i]);
        if (n1 < n2) {
          return -1;
        }
        if (n1 > n2) {
          return 1;
        }
      }
    }

    return 0;
  }
}
