import 'package:flutter/material.dart';

class DropdownButtonEx<T> extends StatefulWidget {
  DropdownButtonEx({
    super.key,
    required this.items,
    this.value,
    this.hint,
    required this.onChanged,
    this.menuWidth,
  });
  @override
  State<DropdownButtonEx<T>> createState() => _DropdownButtonExState();

  final List<DropdownMenuItem<T>>? items;
  T? value;
  final Widget? hint;
  final ValueChanged<T?>? onChanged;
  final double? menuWidth;
}

class _DropdownButtonExState<T> extends State<DropdownButtonEx<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.value,
      items: widget.items,
      hint: widget.hint,
      onChanged: (value) {
        widget.value = value;
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
        setState(() {});
      },
    );
  }
}
