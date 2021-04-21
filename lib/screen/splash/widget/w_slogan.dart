import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WSlogan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/svg/svg_logo.svg",
            width: 80,
            height: 80,
            color: MyColors.primaryColor,
          ),
          SizedBox(height: 30),
          Text(
            "Interactive Quiz",
            style: MyTextStyle.bold.copyWith(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text("100% free only at Cizo", style: MyTextStyle.regular),
        ],
      ),
    );
  }
}
