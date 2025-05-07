import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Color withValues({double? alpha}) {
    //flutter 3.29
    return withOpacity(alpha ?? 1);
  }
}
