import 'package:flutter/material.dart';
import 'package:karing/app/extension/colors.dart';
import 'package:karing/screens/theme_define.dart';

class SegemntedElevatedButtonItem {
  SegemntedElevatedButtonItem({required this.value, required this.text});
  final int value;
  final String text;
}

class SegmentedElevatedButton extends StatefulWidget {
  SegmentedElevatedButton(
      {super.key,
      required this.segments,
      required this.selected,
      this.padding,
      this.background,
      this.buttonStyle,
      this.onPressed});

  final List<SegemntedElevatedButtonItem> segments;
  int selected;
  final EdgeInsetsGeometry? padding;
  final Color? background;
  final ButtonStyle? buttonStyle;
  final Function(int value)? onPressed;

  @override
  State<SegmentedElevatedButton> createState() => _SegmentedElevatedButton();
}

class _SegmentedElevatedButton extends State<SegmentedElevatedButton> {
  final List<WidgetStatesController> _controllers = [];

  @override
  void initState() {
    for (int i = 0; i < widget.segments.length; ++i) {
      var controller = WidgetStatesController();
      _controllers.add(controller);
    }
    super.initState();
  }

  @override
  void dispose() {
    for (int i = 0; i < _controllers.length; ++i) {
      _controllers[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final theme = Theme.of(context);
      for (int i = 0; i < _controllers.length; ++i) {
        _controllers[i].value =
            i == widget.selected ? {WidgetState.selected} : {};
      }
      const double space = 5;
      double spaceWidth = (widget.segments.length + 1) * space;

      List<Widget> widgets = [];
      widgets.add(const SizedBox(
        width: space,
      ));

      for (int i = 0; i < widget.segments.length; ++i) {
        final button = SizedBox(
            width: (constraints.maxWidth - spaceWidth) / widget.segments.length,
            child: ElevatedButton(
              statesController: _controllers[i],
              style: widget.buttonStyle ??
                  ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith(
                      (Set<WidgetState> states) {
                        if (states.contains(WidgetState.focused)) {
                          return Colors.white;
                        }
                        if (states.contains(WidgetState.selected)) {
                          return Colors.white;
                        }
                        return Colors.white.withValues(alpha: 0.3);
                      },
                    ),
                    shadowColor: WidgetStateProperty.resolveWith(
                      (Set<WidgetState> states) {
                        return Colors.white.withValues(alpha: 0.0);
                      },
                    ),
                  ),
              onPressed: () async {
                widget.selected = i;
                for (int j = 0; j < widget.segments.length; ++j) {
                  _controllers[j].value = i == j ? {WidgetState.selected} : {};
                }

                widget.onPressed?.call(i);
                setState(() {});
              },
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    widget.segments[i].text,
                    style: TextStyle(
                      color: widget.selected == i
                          ? ThemeDefine.kColorBlue
                          : Colors.black,
                    ),
                  )),
            ));
        widgets.add(button);
        widgets.add(const SizedBox(
          width: space,
        ));
      }

      return Container(
        width: constraints.maxWidth - 40,
        decoration: BoxDecoration(
          color: widget.background ?? theme.colorScheme.surface,
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Padding(
          padding: widget.padding ?? const EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widgets,
          ),
        ),
      );
    });
  }
}
