class TypeChecker<T> {
  T? check(dynamic value, {T? defaultValue}) {
    if (value is T) {
      return value;
    }
    return defaultValue;
  }
}
