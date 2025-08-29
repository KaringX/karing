import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:karing/app/utils/platform_utils.dart';

import 'num.dart';

import 'package:flutter/material.dart';

const helperPort = 47890;
const maxTextScale = 1.4;
const minTextScale = 0.8;
final baseInfoEdgeInsets = EdgeInsets.symmetric(
  vertical: 16.ap,
  horizontal: 16.ap,
);

final defaultTextScaleFactor =
    WidgetsBinding.instance.platformDispatcher.textScaleFactor;
const httpTimeoutDuration = Duration(milliseconds: 5000);
const moreDuration = Duration(milliseconds: 100);
const animateDuration = Duration(milliseconds: 100);
const midDuration = Duration(milliseconds: 200);
const commonDuration = Duration(milliseconds: 300);
const defaultUpdateDuration = Duration(days: 1);
final double kHeaderHeight = PlatformUtils.isPC()
    ? !Platform.isMacOS
        ? 40
        : 28
    : 0;

const maxMobileWidth = 600;
const maxLaptopWidth = 840;

final commonFilter = ImageFilter.blur(
  sigmaX: 5,
  sigmaY: 5,
  tileMode: TileMode.mirror,
);

const defaultPrimaryColor = 0XFFD8C0C3;

double getWidgetHeight(num lines) {
  if (lines == 0) {
    return 50;
  }
  if (lines <= 1) {
    return max(lines * 78 + (lines - 1) * 16, 0).ap;
  }
  final oneLine = getWidgetHeight(1);
  return oneLine + (lines - 1) * 32;
}
