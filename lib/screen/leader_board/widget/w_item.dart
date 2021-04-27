import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WItem extends StatelessWidget {
  final int level;
  final int ball;
  final String imgUrl;
  final String fullName;

  WItem({
    this.level = 1,
    this.ball = 3200,
    this.imgUrl = "assets/img/img_place1.png",
    this.fullName = "Theo Joe",
  });

  @override
  Widget build(BuildContext context) {
    if (level < 4)
      return _Item1(
        level: level,
        ball: ball,
        imgUrl: imgUrl,
        fullName: fullName,
      );
    if (level == 4)
      return _Item2(
        level: level,
        ball: ball,
        imgUrl: imgUrl,
        fullName: fullName,
      );
    return _Item3(
      level: level,
      ball: ball,
      imgUrl: imgUrl,
      fullName: fullName,
    );
  }
}

class _Item1 extends StatelessWidget {
  final int level;
  final int ball;
  final String imgUrl;
  final String fullName;

  _Item1({
    this.level = 1,
    this.ball = 0,
    this.imgUrl = "assets/img/img_place1.png",
    this.fullName = "Theo Joe",
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 80,
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(imgUrl),
              SizedBox(width: 10),
              Expanded(child: Text(fullName, style: MyTextStyle.bold)),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: MyColors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "3200",
                  style: MyTextStyle.regular.copyWith(
                    fontSize: 13,
                    color: MyColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 38,
          bottom: -9,
          child: Image.asset(
            "assets/img/img_level$level.png",
            width: 50,
          ),
        ),
      ],
    );
  }
}

class _Item2 extends StatelessWidget {
  final int level;
  final int ball;
  final String imgUrl;
  final String fullName;

  _Item2({
    this.level = 1,
    this.ball = 0,
    this.imgUrl = "assets/img/img_place1.png",
    this.fullName = "Theo Joe",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
      decoration: BoxDecoration(
        color: MyColors.screen,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        children: [
          Text(
            "$level",
            style: MyTextStyle.bold.copyWith(
              color: MyColors.primaryColor,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(left: 20),
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
              ),
              child: Row(
                children: [
                  Image.asset(imgUrl),
                  SizedBox(width: 20),
                  Expanded(child: Text(fullName, style: MyTextStyle.bold)),
                  Text(
                    "$ball",
                    style: MyTextStyle.normal.copyWith(color: MyColors.yellow),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Item3 extends StatelessWidget {
  final int level;
  final int ball;
  final String imgUrl;
  final String fullName;

  _Item3({
    this.level = 1,
    this.ball = 0,
    this.imgUrl = "assets/img/img_place1.png",
    this.fullName = "Theo Joe",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),
      color: MyColors.screen,
      child: Row(
        children: [
          Text(
            "$level",
            style: MyTextStyle.bold.copyWith(
              color: MyColors.primaryColor,
              fontSize: 20,
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              margin: EdgeInsets.only(left: 20),
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
              ),
              child: Row(
                children: [
                  Image.asset(imgUrl),
                  SizedBox(width: 20),
                  Expanded(child: Text(fullName, style: MyTextStyle.bold)),
                  Text(
                    "$ball",
                    style: MyTextStyle.normal.copyWith(color: MyColors.yellow),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
