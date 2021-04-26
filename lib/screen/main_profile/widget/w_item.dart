import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback? onPressed;

  WItem({required this.iconData, this.text = "", this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            child: Icon(iconData, color: MyColors.primaryColor),
            decoration: BoxDecoration(
              color: MyColors.primaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(width: 10),
          Expanded(child: Text(text, style: MyTextStyle.normal)),
          MaterialButton(
            minWidth: 50,
            height: 50,
            padding: EdgeInsets.all(0),
            onPressed: onPressed,
            shape: CircleBorder(),
            child: Icon(
              Icons.chevron_right_outlined,
              color: MyColors.primaryColor,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
