// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

class ListViewMultiPartsItem {
  int? bindNO;
  dynamic data;
  Widget Function(dynamic, int index, int? bindNO)? creator;
}

class ListViewMultiPartsBuilder {
  static Widget build(List<ListViewMultiPartsItem> parts,
      {ScrollController? controller}) {
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          controller: controller,
          itemCount: parts.length,
          itemBuilder: (BuildContext context, int index) {
            if (index >= parts.length) {
              return const SizedBox.shrink();
            }
            var current = parts[index];
            if (current.creator == null) {
              return const SizedBox.shrink();
            }
            return current.creator!(current.data, index, current.bindNO);
          },
        ));
  }
}
