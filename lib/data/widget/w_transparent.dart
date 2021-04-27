import 'dart:ui';

import 'package:flutter/material.dart';

class WTransparent extends StatelessWidget {
  final bool visible;
  final Widget? child;
  final AlignmentGeometry? alignment;

  WTransparent({
    this.visible = true,
    this.child,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return SizedBox();
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: alignment,
        child: child,
        decoration: new BoxDecoration(
          color: Colors.grey.shade100.withOpacity(0.5),
        ),
      ),
    );
  }
}
