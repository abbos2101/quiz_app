import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WListTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Public Quiz",
            style: MyTextStyle.bold.copyWith(fontSize: 18),
          ),
        ),
        MaterialButton(
          minWidth: 60,
          height: 60,
          padding: EdgeInsets.all(0),
          shape: CircleBorder(),
          child: Icon(
            Icons.arrow_right_alt_outlined,
            color: MyColors.primaryColor,
            size: 50,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
