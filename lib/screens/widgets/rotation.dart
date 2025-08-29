import 'package:flutter/material.dart';

class Rotation extends StatefulWidget {
  final Widget? child;

  const Rotation({
    super.key,
    required this.child,
  });

  @override
  State<Rotation> createState() => RotationState();
}

class RotationState extends State<Rotation> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: false);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: widget.child,
    );
  }
}
