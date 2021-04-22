import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WMenuButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback? onPressed;

  WMenuButton({required this.iconData, this.text = "", this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 120,
      height: 120,
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color: MyColors.dark.withOpacity(0.8)),
          SizedBox(height: 5),
          Text(
            text,
            style: MyTextStyle.regular.copyWith(
              fontSize: 14,
              color: MyColors.dark.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
