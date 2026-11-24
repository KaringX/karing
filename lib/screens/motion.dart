import 'package:flutter/material.dart';

/// Centralized motion constants for the Material 3 redesign.
///
/// Durations follow the Material 3 motion guidance:
/// - short: 150-200ms
/// - medium: 300-400ms
/// - long: 500ms
class Motion {
  const Motion._();

  static const Duration short1 = Duration(milliseconds: 150);
  static const Duration short2 = Duration(milliseconds: 200);

  static const Duration medium1 = Duration(milliseconds: 300);
  static const Duration medium2 = Duration(milliseconds: 400);

  static const Duration long1 = Duration(milliseconds: 500);

  static const Curve emphasized = Curves.easeInOutCubicEmphasized;
  static const Curve standard = Curves.easeOutCubic;

  /// Returns [duration] or zero when the user has requested reduced motion.
  static Duration resolve(BuildContext context, Duration duration) {
    if (MediaQuery.of(context).disableAnimations) {
      return Duration.zero;
    }
    return duration;
  }
}
