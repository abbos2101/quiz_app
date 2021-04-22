import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/style.dart';

class WTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          minWidth: 50,
          height: 50,
          padding: EdgeInsets.all(0),
          shape: CircleBorder(),
          onPressed: () => Navigator.pop(context),
          child: Icon(CupertinoIcons.arrow_left, size: 30),
        ),
        SizedBox(width: 10),
        Text(
          "Setting Up Your Profile",
          style: MyTextStyle.bold.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
