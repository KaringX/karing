import 'package:flutter/material.dart';

Future<T?> showSheet<T>({
  required BuildContext context,
  required Widget body,
  required String title,
  bool isScrollControlled = true,
  double width = 320,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: isScrollControlled,
    builder: (context) {
      return SafeArea(
        child: body,
      );
    },
    showDragHandle: true,
    useSafeArea: true,
  );
}
