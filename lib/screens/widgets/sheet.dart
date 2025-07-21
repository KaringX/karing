import 'package:flutter/material.dart';

Future<T?> showSheet<T>({
  required BuildContext context,
  required Widget body,
  bool isScrollControlled = true,
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

typedef SheetBuilder = Widget Function(BuildContext context);

Future<T?> showSheetWithBuilder<T>({
  required BuildContext context,
  required SheetBuilder builder,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: false,
    builder: (_) {
      return SafeArea(
        child: builder(context),
      );
    },
    showDragHandle: false,
    useSafeArea: true,
  );
}

class AdaptiveSheetScaffold extends StatefulWidget {
  final Widget body;
  final String title;
  final List<Widget> actions;

  const AdaptiveSheetScaffold({
    super.key,
    required this.body,
    required this.title,
    this.actions = const [],
  });

  @override
  State<AdaptiveSheetScaffold> createState() => _AdaptiveSheetScaffoldState();
}

class _AdaptiveSheetScaffoldState extends State<AdaptiveSheetScaffold> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = theme.colorScheme.surface;

    final appBar = AppBar(
      forceMaterialTransparency: true,
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: backgroundColor,
      title: Text(
        widget.title,
      ),
      actions: widget.actions,
    );

    final handleSize = Size(32, 4);
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28.0)),
        color: backgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Container(
              alignment: Alignment.center,
              height: handleSize.height,
              width: handleSize.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(handleSize.height / 2),
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          appBar,
          Flexible(
            flex: 1,
            child: widget.body,
          )
        ],
      ),
    );
  }
}

Future<void> showSheetWidgets({
  required BuildContext context,
  required List<dynamic> widgets,
  bool isScrollControlled = true,
}) {
  return showSheet(
    context: context,
    body: SizedBox(
        height: 400,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Scrollbar(
              child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return widgets[index];
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 1,
                thickness: 0.3,
              );
            },
            itemCount: widgets.length,
          )),
        )),
  );
}
