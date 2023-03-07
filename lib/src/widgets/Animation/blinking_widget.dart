import 'package:flutter/material.dart';

class BlinkingCustomWidget extends StatefulWidget {
  final Widget widget;
  final int duration;

  const BlinkingCustomWidget(
      {super.key, required this.widget, this.duration = 1000});

  @override
  _BlinkingCustomWidgetState createState() => _BlinkingCustomWidgetState();
}

class _BlinkingCustomWidgetState extends State<BlinkingCustomWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(microseconds: widget.duration));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationController,
      child: widget.widget,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
