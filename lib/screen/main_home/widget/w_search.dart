import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_text_field.dart';
import 'package:quiz_app/data/widget/w_background.dart';

class WSearch extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onPressedSearch;

  WSearch({required this.controller, this.onPressedSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
      ),
      child: Column(
        children: [
          Container(
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
                  controller: controller,
                  iconData: Icons.search,
                  hintText: "Search quiz code",
                  fillColor: MyColors.white,
                  textCapitalization: TextCapitalization.characters,
                ),
              ],
            ),
          ),
          controller.text.isEmpty
              ? SizedBox()
              : Padding(
                  padding:
                      EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    padding: EdgeInsets.all(0),
                    color: MyColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: onPressedSearch,
                    child: Text(
                      "Find Quiz",
                      style: MyTextStyle.bold.copyWith(
                        color: MyColors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
