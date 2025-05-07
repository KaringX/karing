class ChainComparator<T> {
  final ChainComparator<T>? _parent;
  final Comparator<T> _comparator;

  ChainComparator._create(this._parent, this._comparator);

  factory ChainComparator.empty() => ChainComparator._create(null, (a, b) => 0);

  static ChainComparator<T> comparing<T, F extends Comparable<F>>(
      F Function(T) extractor) {
    return ChainComparator._create(
        null, (a, b) => _compareComparable(extractor(a), extractor(b)));
  }

  int compare(T a, T b) {
    final parent = _parent;
    if (parent != null) {
      final result = parent.compare(a, b);
      if (result != 0) return result;
    }
    return _comparator(a, b);
  }

  int call(T a, T b) => compare(a, b);

  ChainComparator<T> thenCompareBy<F extends Comparable<F>>(
      F Function(T) extractor,
      {bool reversed = false}) {
    comparator(a, b) => _compareComparable(extractor(a), extractor(b));
    return ChainComparator._create(
        this, reversed ? _reverse(comparator) : comparator);
  }

  ChainComparator<T> thenWithComparator(Comparator<T> comparator,
      {bool reversed = false}) {
    return ChainComparator._create(
        this, reversed ? _reverse(comparator) : comparator);
  }

  ChainComparator<T> thenCompareByReversed<F extends Comparable<F>>(
      F Function(T) extractor) {
    comparator(a, b) => _compareComparable(extractor(a), extractor(b));
    return ChainComparator._create(this, _reverse(comparator));
  }

  ChainComparator<T> thenTrueFirst(bool Function(T) f) {
    return ChainComparator._create(this, (a, b) {
      final fa = f(a);
      final fb = f(b);
      return fa == fb ? 0 : (fa ? -1 : 1);
    });
  }

  ChainComparator<T> reversed() {
    return ChainComparator._create(null, _reverse(_comparator));
  }

  static Comparator<T> _reverse<T>(Comparator<T> comparator) =>
      (a, b) => comparator(b, a);

  static int _compareComparable<F extends Comparable<F>>(F a, F b) =>
      a.compareTo(b);
}

class Comparators {
  static Comparator<String> compareStringCaseInsensitive(
      {bool uppercaseFirst = false}) {
    return (String a, String b) {
      final r = _compareCaseInsensitive(a, b);
      if (r != 0) return r;
      return uppercaseFirst ? a.compareTo(b) : b.compareTo(a);
    };
  }

  static int _compareCaseInsensitive(String a, String b) =>
      a.toLowerCase().compareTo(b.toLowerCase());
}
