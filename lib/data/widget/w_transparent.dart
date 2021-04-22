import 'dart:ui';

import 'package:flutter/material.dart';

class WTransparent extends StatelessWidget {
  final bool visible;
  final Widget? child;
  final AlignmentGeometry? alignment;

  WTransparent({required this.visible, this.child, this.alignment});

  @override
  Widget build(BuildContext context) {
    if (!visible) return SizedBox();
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: alignment,
        child: child,
        decoration: new BoxDecoration(
          color: Colors.grey.shade500.withOpacity(0.2),
        ),
      ),
    );
  }
}
