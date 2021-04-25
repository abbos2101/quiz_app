import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WFound extends StatelessWidget {
  final String name;
  final String author;
  final VoidCallback? onPressedEnter;

  WFound({required this.name, required this.author, this.onPressedEnter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyColors.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _Top()),
          Expanded(
            child: _Bottom(
              name: name,
              author: author,
              onPressedEnter: onPressedEnter,
            ),
          ),
        ],
      ),
    );
  }
}

class _Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primaryColor,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            minWidth: 60,
            height: 60,
            shape: CircleBorder(),
            child: Icon(
              Icons.keyboard_backspace_outlined,
              color: MyColors.white,
              size: 35,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(child: SizedBox()),
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset("assets/img/img_found.png"),
            ),
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  final String name;
  final String author;
  final VoidCallback? onPressedEnter;

  _Bottom({required this.name, required this.author, this.onPressedEnter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.screen,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Text(
            "Quiz Found!",
            style: MyTextStyle.bold.copyWith(fontSize: 24),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MyColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              name,
              style: MyTextStyle.bold.copyWith(color: MyColors.primaryColor),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Created By",
              style: MyTextStyle.regular.copyWith(fontSize: 13),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/img/img_author.png",
                  height: 60,
                  width: 60,
                ),
                SizedBox(width: 20),
                Text(
                  author,
                  style: MyTextStyle.bold.copyWith(fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            padding: EdgeInsets.all(0),
            color: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Enter Quiz",
              style: MyTextStyle.bold.copyWith(
                fontSize: 18,
                color: MyColors.white,
              ),
            ),
            onPressed: onPressedEnter,
          ),
        ],
      ),
    );
  }
}
