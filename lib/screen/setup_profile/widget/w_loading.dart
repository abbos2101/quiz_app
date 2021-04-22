import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';

class WLoading extends StatelessWidget {
  final bool visible;
  WLoading({required this.visible});

  @override
  Widget build(BuildContext context) {
    if (!visible) return SizedBox();
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.5),
        ),
        child: Container(
          width: 80,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: CircularProgressIndicator(backgroundColor: MyColors.grey),
        ),
      ),
    );
  }
}
