import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'map.dart';

class Measure {
  final TextScaler _textScaler;
  final BuildContext context;
  final Map<String, dynamic> _measureMap;

  Measure.of(this.context, double textScaleFactor)
      : _measureMap = {},
        _textScaler = TextScaler.linear(
          textScaleFactor,
        );

  Size computeTextSize(
    Text text, {
    double maxWidth = double.infinity,
  }) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text.data,
        style: text.style,
      ),
      maxLines: text.maxLines,
      textScaler: _textScaler,
      textDirection: text.textDirection ?? TextDirection.ltr,
    )..layout(
        maxWidth: maxWidth,
      );
    return textPainter.size;
  }

  double get bodyMediumHeight {
    return _measureMap.updateCacheValue(
      "bodyMediumHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ).height,
    );
  }

  double get bodyLargeHeight {
    return _measureMap.updateCacheValue(
      "bodyLargeHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ).height,
    );
  }

  double get bodySmallHeight {
    return _measureMap.updateCacheValue(
      "bodySmallHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ).height,
    );
  }

  double get labelSmallHeight {
    return _measureMap.updateCacheValue(
      "labelSmallHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ).height,
    );
  }

  double get labelMediumHeight {
    return _measureMap.updateCacheValue(
      "labelMediumHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ).height,
    );
  }

  double get titleLargeHeight {
    return _measureMap.updateCacheValue(
      "titleLargeHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ).height,
    );
  }

  double get titleMediumHeight {
    return _measureMap.updateCacheValue(
      "titleMediumHeight",
      () => computeTextSize(
        Text(
          "X",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ).height,
    );
  }
}
