import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WButton extends StatelessWidget {
  final bool selected;
  final String text;
  final Color color;
  final double circular;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;

  WButton({
    this.selected = true,
    this.text = "",
    required this.color,
    this.circular = 0,
    this.margin,
    this.padding,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.all(0),
      child: MaterialButton(
        minWidth: double.infinity,
        height: double.infinity,
        padding: padding ?? EdgeInsets.all(0),
        color: selected ? color : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circular),
        ),
        textColor: selected ? MyColors.white : color.withOpacity(0.6),
        child: Text(
          text,
          style: MyTextStyle.normal.copyWith(fontSize: 20),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
