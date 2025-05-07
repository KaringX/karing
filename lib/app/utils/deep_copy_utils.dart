abstract final class DeepCopyUtils {
  static dynamic mapCopy(dynamic obj) {
    if (obj is! Map) {
      return obj;
    }
    var mapCopied = {};
    obj.forEach((key, value) {
      mapCopied[key] = mapCopy(value);
    });
    return mapCopied;
  }
}
