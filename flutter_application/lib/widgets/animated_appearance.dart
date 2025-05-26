import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedAppearance extends StatefulWidget {
  final Widget child;
  final int delayMilliseconds;

  const AnimatedAppearance({
    super.key,
    required this.child,
    this.delayMilliseconds = 0,
  });

  @override
  State<AnimatedAppearance> createState() => _AnimatedAppearanceState();
}

class _AnimatedAppearanceState extends State<AnimatedAppearance> {
  double _opacity = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: widget.delayMilliseconds), () {
      if (mounted) {
        setState(() {
          _opacity = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 600),
        offset: _opacity == 1 ? Offset.zero : const Offset(0, 0.2),
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}
