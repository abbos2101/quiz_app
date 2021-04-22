import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_text_field.dart';

class WSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find Quiz Code",
            style: MyTextStyle.bold.copyWith(
              color: MyColors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Enter quiz code that given by teacher, and you can start gathering points!",
            style: MyTextStyle.regular.copyWith(
              color: MyColors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 40),
          WTextField(
            iconData: Icons.search,
            hintText: "Search quiz code",
            fillColor: MyColors.white,
          ),
        ],
      ),
    );
  }
}
