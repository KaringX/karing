import 'package:yaml/yaml.dart';

abstract final class ConvertUtils {
  static List<String>? convertList(List<dynamic>? list) {
    if (list == null) return null;
    return list.whereType<String>().toList();
  }

  static List<String>? convertDList(dynamic value) {
    if (value == null) return null;

    if (value is List) {
      return value.whereType<String>().toList();
    } else if (value is String) {
      return [value];
    }

    return null;
  }

  static Map<String, String>? convertMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    return map.map((key, value) => MapEntry(key, value.toString()));
  }

  static List<String>? convertYList(YamlList? list) {
    if (list == null) return null;
    return list.whereType<String>().toList();
  }

  static Map<String, String>? convertYMap(YamlMap? map) {
    if (map == null) return null;
    return map.map((key, value) => MapEntry(
        key.toString(),
        (value is List && value.isNotEmpty)
            ? value[0].toString()
            : value.toString()));
  }

  static Map<String, dynamic>? convertYMapDy(YamlMap? map) {
    if (map == null) return null;
    return map.map((key, value) => MapEntry(key.toString(), value));
  }

  static String? stringParse(String? value) {
    if (value == null || value.isEmpty || value == "undefined") return null;
    return value;
  }

  static int? intParse(String? value) {
    if (value == null) return null;
    return int.tryParse(value);
  }

  static bool? boolParse(String? value, String? orValue) {
    if (value == null) return null;
    value = value.toLowerCase();
    if (orValue != null && value == orValue.toLowerCase()) return true;
    return value == "1" || value == "true";
  }

  static String? stringParseDynamic(dynamic value) {
    if (value == null) return null;
    if (value is! String) value = value.toString();
    return value;
  }

  static int? intParseDynamic(dynamic value) {
    if (value == null) return null;
    if (value is String) return int.tryParse(value);
    return value;
  }

  static bool? boolParseDynamic(dynamic value, String? orValue) {
    if (value == null) return null;

    if (value is String) {
      value = value.toLowerCase();
      if (orValue != null && value == orValue.toLowerCase()) return true;
      return value == "1" || value == "true";
    }

    return value == 1 || value == true;
  }

  static List<String>? getListStringFromDynamic(
      dynamic value, bool removeDuplicates, List<String>? defaultValue) {
    if (value is! List) return defaultValue;

    final result = value.whereType<String>().toList();
    return removeDuplicates ? result.toSet().toList() : result;
  }

  static List<int>? getListIntFromDynamic(
      dynamic value, bool removeDuplicates, List<int>? defaultValue) {
    if (value is! List) return defaultValue;

    final result = value.whereType<int>().toList();
    return removeDuplicates ? result.toSet().toList() : result;
  }
}
