import 'package:extended_wrap/extended_wrap.dart';
import 'package:flutter/material.dart';
import 'package:karing/screens/multi_select_screen.dart';

class MultiCheckBox extends StatefulWidget {
  final List<String> options;
  final List<Color> optionsColors;
  final List<int> selectedIndexs;
  final Function(List<int> selectedIndexes) onOptionsSelected;
  final int maxLines;
  final int minLines;

  MultiCheckBox({
    required this.options,
    required this.optionsColors,
    required this.selectedIndexs,
    required this.onOptionsSelected,
    this.maxLines = 3,
    this.minLines = 1,
  });

  @override
  _MultiheckBoxState createState() => _MultiheckBoxState();
}

class _MultiheckBoxState extends State<MultiCheckBox> {
  late List<int> _selectedIndexes;

  int maxLines = 1;
  int minLines = 1;
  @override
  void initState() {
    maxLines = widget.maxLines;
    minLines = widget.minLines;
    _initializeSelectedOptions();
    super.initState();
  }

  void _initializeSelectedOptions() {
    _selectedIndexes = widget.selectedIndexs.toList();
  }

  @override
  void didUpdateWidget(MultiCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.options != widget.options) {
      _initializeSelectedOptions();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.options.isEmpty) {
      return SizedBox.shrink();
    }
    return ExtendedWrap(
      maxLines: maxLines,
      minLines: minLines,
      spacing: 15.0,
      overflowWidget: _expandButton(),
      children: widget.options.asMap().entries.map(
        (entry) {
          int index = entry.key;
          String option = entry.value;
          return _buildCheckBoxWithIconAndText(
            text: option,
            checked: _selectedIndexes.contains(index),
            color: widget.optionsColors[index],
            onChanged: (isChecked) {
              setState(() {
                if (isChecked) {
                  if (!_selectedIndexes.contains(index)) {
                    _selectedIndexes.add(index);
                  }
                } else {
                  _selectedIndexes.remove(index);
                }
                _selectedIndexes.sort((a, b) => b - a);
                widget.onOptionsSelected(_selectedIndexes);
              });
            },
          );
        },
      ).toList(),
    );
  }

  _expandButton() {
    return GestureDetector(
      onTap: () async {
        List<String> selectedData = [];
        for (int i = 0; i < _selectedIndexes.length; ++i) {
          selectedData.add(_selectedIndexes[i].toString());
        }

        final selected = await Navigator.push(
            context,
            MaterialPageRoute(
                settings: MultiSelectScreen.routSettings(),
                builder: (context) => MultiSelectScreen(
                      title: '',
                      getData: () async {
                        List<MultiSelectScreenDateItem> allData = [];
                        for (int i = 0; i < widget.options.length; ++i) {
                          allData.add(MultiSelectScreenDateItem(
                              key: i.toString(),
                              text: widget.options[i],
                              color: widget.optionsColors[i]));
                        }
                        return allData;
                      },
                      selectedData: selectedData,
                    )));

        if (selected != null) {
          _selectedIndexes.clear();
          for (var sel in selected) {
            _selectedIndexes.add(int.parse(sel));
          }

          widget.onOptionsSelected(_selectedIndexes);
        }
      },
      child: Icon(
        Icons.arrow_circle_down_outlined,
        size: 26,
      ),
    );
  }

  Widget _buildCheckBoxWithIconAndText({
    required String text,
    required bool checked,
    required Color? color,
    required Function(bool) onChanged,
  }) {
    return SizedBox(
        height: 30,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
                value: checked,
                onChanged: (value) {
                  onChanged(value ?? false);
                }),
            Text(text, style: TextStyle(color: color)),
          ],
        ));
  }
}
