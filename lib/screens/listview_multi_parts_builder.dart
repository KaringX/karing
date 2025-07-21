// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

class ListViewMultiPartsItem {
  int? bindNO;
  dynamic data;
  Widget Function(dynamic, int index, int? bindNO)? creator;
}

class ListViewMultiPartsBuilder {
  static Widget build(List<ListViewMultiPartsItem> parts,
      {ScrollController? controller, bool separator = true}) {
    return Scrollbar(
        thumbVisibility: true,
        child: separator
            ? ListView.separated(
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
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 1,
                    thickness: 0.3,
                  );
                },
              )
            : ListView.builder(
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
