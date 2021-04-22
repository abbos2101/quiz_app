import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'w_menu_button.dart';
import 'w_transparent.dart';

class WBottomNavigation extends StatelessWidget {
  final Widget? child;
  final int index;
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
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: child,
        ),
        WTransparent(
          visible: index == 1,
          child: Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 120),
            child: Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.only(left: 40, right: 40),
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/img_home_explore.png"),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: WMenuButton(
                      iconData: Icons.search,
                      text: "Find Quiz Code",
                      onPressed: onPressedQuizCode,
                    ),
                  ),
                  Expanded(
                    child: WMenuButton(
                      iconData: CupertinoIcons.rectangle_grid_1x2,
                      text: "Find Public Quiz",
                      onPressed: onPressedPublicQuiz,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: MyColors.white,
            boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 140,
          alignment: Alignment.topCenter,
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
        SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: MaterialButton(
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
              ),
              Expanded(child: SizedBox()),
              Expanded(
                flex: 3,
                child: MaterialButton(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
