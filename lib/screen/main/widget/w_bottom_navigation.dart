import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';

class WBottomNavigation extends StatelessWidget {
  final int index;
  final Widget? child;
  final ValueChanged<int> onTap;
  final VoidCallback? onPressedQuizCode;
  final VoidCallback? onPressedPublicQuiz;

  WBottomNavigation({
    this.index = 0,
    this.child,
    required this.onTap,
    this.onPressedQuizCode,
    this.onPressedPublicQuiz,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                minWidth: 80,
                height: 80,
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.home_filled,
                  size: 40,
                  color: index == 0
                      ? MyColors.primaryColor
                      : MyColors.dark.withOpacity(0.2),
                ),
                shape: CircleBorder(),
                onPressed: () => onTap(0),
              ),
              SizedBox(width: 100),
              MaterialButton(
                minWidth: 80,
                height: 80,
                padding: EdgeInsets.all(0),
                child: Icon(
                  CupertinoIcons.person,
                  size: 40,
                  color: index == 2
                      ? MyColors.primaryColor
                      : MyColors.dark.withOpacity(0.2),
                ),
                shape: CircleBorder(),
                onPressed: () => onTap(2),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 40,
          child: MaterialButton(
            minWidth: 80,
            height: 80,
            padding: EdgeInsets.all(0),
            color: MyColors.primaryColor,
            child: Icon(
              CupertinoIcons.compass,
              size: 40,
              color: MyColors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () => onTap(1),
          ),
        ),
      ],
    );
  }
}
