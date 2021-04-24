import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WQuest extends StatelessWidget {
  final String title;
  final String time;
  final String question;
  final int? index;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final ValueChanged<int>? onPressedItem;
  final VoidCallback? onPressedNext;

  WQuest({
    this.title = "",
    this.time = "",
    this.question = "",
    this.index,
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
    this.onPressedItem,
    this.onPressedNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyColors.primaryColor,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: _Top(title: title, time: time, question: question),
          ),
          Expanded(
            flex: 3,
            child: _Bottom(
              index: index,
              text1: text1,
              text2: text2,
              text3: text3,
              text4: text4,
              onPressedItem: onPressedItem,
              onPressedNext: onPressedNext,
            ),
          ),
        ],
      ),
    );
  }
}

class _Top extends StatelessWidget {
  final String title;
  final String time;
  final String question;

  _Top({
    required this.title,
    required this.time,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: MyTextStyle.bold.copyWith(color: MyColors.white),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                child: Text(
                  time,
                  style: MyTextStyle.normal.copyWith(
                    color: MyColors.white,
                    fontSize: 14,
                  ),
                ),
                decoration: BoxDecoration(
                  color: MyColors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Text(question, style: MyTextStyle.normal),
          )),
        ],
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  final int? index;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final ValueChanged<int>? onPressedItem;
  final VoidCallback? onPressedNext;

  _Bottom({
    this.index,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    this.onPressedItem,
    this.onPressedNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.screen,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40),
          Expanded(
            child: _BottomItem(
              text: text1,
              active: index == 0,
              onPressed: onPressedItem == null ? null : () => onPressedItem!(0),
            ),
          ),
          Expanded(
            child: _BottomItem(
              text: text2,
              active: index == 1,
              onPressed: onPressedItem == null ? null : () => onPressedItem!(1),
            ),
          ),
          Expanded(
            child: _BottomItem(
              text: text3,
              active: index == 2,
              onPressed: onPressedItem == null ? null : () => onPressedItem!(2),
            ),
          ),
          Expanded(
            child: _BottomItem(
              text: text4,
              active: index == 3,
              onPressed: onPressedItem == null ? null : () => onPressedItem!(3),
            ),
          ),
          Expanded(
            child: _NextButton(active: index != null, onPressed: onPressedNext),
          ),
        ],
      ),
    );
  }
}

class _BottomItem extends StatelessWidget {
  final bool active;
  final VoidCallback? onPressed;
  final String text;

  _BottomItem({required this.active, this.text = "", this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: MaterialButton(
        minWidth: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 10, right: 10),
        color: active ? MyColors.primaryColor : MyColors.white,
        disabledColor:
            active ? MyColors.primaryColor.withOpacity(0.5) : MyColors.white,
        elevation: 1,
        disabledElevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: onPressed,
        child: SizedBox(
          width: double.infinity,
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: active
                ? MyTextStyle.bold.copyWith(color: MyColors.white)
                : MyTextStyle.regular,
          ),
        ),
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  final bool active;
  final VoidCallback? onPressed;

  _NextButton({required this.active, this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (active)
      return Padding(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
        child: MaterialButton(
          minWidth: double.infinity,
          height: double.infinity,
          color: MyColors.primaryColor,
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: onPressed,
          child: Text(
            "Next",
            style: MyTextStyle.bold.copyWith(
              color: MyColors.white,
              fontSize: 18,
            ),
          ),
        ),
      );
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: MaterialButton(
        minWidth: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(width: 2, color: MyColors.grey),
        ),
        onPressed: null,
        child: Text(
          "Next",
          style: MyTextStyle.bold.copyWith(
            color: MyColors.grey,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
