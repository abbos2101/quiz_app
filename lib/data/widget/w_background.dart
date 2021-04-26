import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WBackground extends StatelessWidget {
  final bool visible;
  final Widget? child;
  final AlignmentGeometry? alignment;

  WBackground({
    required this.visible,
    this.child,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return SizedBox();
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topLeft,
              child: Transform.rotate(
                angle: 2,
                child: SvgPicture.asset(
                  "assets/svg/svg_figure2.svg",
                  height: 200,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/svg/svg_figure1.svg",
                height: 300,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.only(top: 200),
              alignment: Alignment.topCenter,
              child: SvgPicture.asset(
                "assets/svg/svg_figure2.svg",
                height: 200,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/svg/svg_figure1.svg",
                height: 300,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.bottomLeft,
              child: Transform.rotate(
                angle: 2,
                child: SvgPicture.asset(
                  "assets/svg/svg_figure2.svg",
                  height: 200,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                "assets/svg/svg_figure1.svg",
                height: 300,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.bottomCenter,
              child: SvgPicture.asset(
                "assets/svg/svg_figure2.svg",
                height: 200,
              ),
            ),
          ],
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: alignment,
            child: child,
            decoration: new BoxDecoration(
              color: Colors.grey.shade100.withOpacity(0.1),
            ),
          ),
        ),
      ],
    );
  }
}
