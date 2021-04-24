import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WTitle extends StatelessWidget {
  final String name;
  WTitle({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
      ),
      child: Row(
        children: [
          Image.asset("assets/img/img_hand.png", height: 30),
          SizedBox(width: 10),
          Text("Hello,  ", style: MyTextStyle.regular),
          Text(name, style: MyTextStyle.normal),
        ],
      ),
    );
  }
}
