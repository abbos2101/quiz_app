import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WFinish extends StatelessWidget {
  final String title;
  final String description;
  final int ball;
  final int rate;
  final VoidCallback? onPressedLeader;
  final VoidCallback? onPressedHome;

  WFinish({
    this.title = "",
    this.description = "",
    this.ball = 0,
    this.rate = 0,
    this.onPressedLeader,
    this.onPressedHome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyColors.primaryColor,
      child: Column(
        children: [
          Expanded(child: _Top(title: title, ball: ball)),
          Expanded(
            child: _Bottom(
              description: description,
              ball: ball,
              rate: rate,
              onPressedLeader: onPressedLeader,
              onPressedHome: onPressedHome,
            ),
          ),
        ],
      ),
    );
  }
}

class _Top extends StatelessWidget {
  final String title;
  final int ball;

  _Top({required this.title, required this.ball});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          title,
          style: MyTextStyle.bold.copyWith(color: MyColors.white),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset("assets/img/img_success.png"),
          ),
        ),
        Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: MyColors.yellow, size: 30),
              SizedBox(width: 10),
              Text(
                "$ball",
                style: MyTextStyle.bold.copyWith(fontSize: 18),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class _Bottom extends StatelessWidget {
  final String description;
  final int ball;
  final int rate;
  final VoidCallback? onPressedLeader;
  final VoidCallback? onPressedHome;

  _Bottom({
    this.description = "",
    this.ball = 0,
    this.rate = 0,
    this.onPressedLeader,
    this.onPressedHome,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
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
            "Congratulations!",
            style: MyTextStyle.bold.copyWith(fontSize: 24),
          ),
          SizedBox(height: 20),
          Expanded(
            child: _TextDescription(
              description: description,
              ball: ball,
              rate: rate,
            ),
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            padding: EdgeInsets.all(0),
            color: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            onPressed: onPressedLeader,
            child: Text(
              "View Leaderboard",
              style: MyTextStyle.bold.copyWith(
                fontSize: 18,
                color: MyColors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: MyColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 60,
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: onPressedHome,
              child: Text(
                "Back to Home",
                style: MyTextStyle.bold.copyWith(
                  fontSize: 18,
                  color: MyColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TextDescription extends StatelessWidget {
  final String description;
  final int ball;
  final int rate;

  _TextDescription({this.description = "", this.ball = 0, this.rate = 0});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: _getText()),
    );
  }

  List<TextSpan> _getText() {
    final List<TextSpan> children = [];
    final List<String> list = description.split(RegExp(r" +"));
    for (int i = 0; i < list.length; i++) {
      if (list[i] == "$ball" || list[i] == "${rate}th")
        children.add(TextSpan(
          text: "${list[i]} ",
          style: MyTextStyle.normal.copyWith(
            color: MyColors.dark.withOpacity(0.8),
          ),
        ));
      else
        children.add(TextSpan(
          text: "${list[i]} ",
          style: MyTextStyle.normal.copyWith(
            color: MyColors.dark.withOpacity(0.6),
          ),
        ));
    }
    return children;
  }
}
