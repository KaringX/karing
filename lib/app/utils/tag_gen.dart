class TagGen {
  final Map<String, int> _tags;

  TagGen({Map<String, int>? tags}) : _tags = tags ?? {};

  String gen(String tag) {
    // 使用containsKey替代值空检查
    if (_tags.containsKey(tag)) {
      int count = 0;
      String newTag;
      // 直接检查新标签是否存在
      do {
        count++;
        newTag = "$tag-$count";
      } while (_tags.containsKey(newTag));

      _tags[newTag] = 0; // 维持原逻辑存储0值
      return newTag;
    }

    _tags[tag] = 0;
    return tag;
  }
}
