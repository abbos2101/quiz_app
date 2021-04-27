import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'w_menu_button.dart';

class WExploreDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 100),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/img_home_explore.png"),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  minWidth: 120,
                  height: 120,
                  padding: EdgeInsets.all(0),
                  shape: CircleBorder(),
                  onPressed: (){},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.search, color: MyColors.dark.withOpacity(0.8)),
                      SizedBox(height: 5),
                      Text(
                        "text",
                        style: MyTextStyle.regular.copyWith(
                          fontSize: 14,
                          color: MyColors.dark.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  minWidth: 120,
                  height: 120,
                  padding: EdgeInsets.all(0),
                  shape: CircleBorder(),
                  onPressed: (){},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(CupertinoIcons.rectangle_grid_1x2, color: MyColors.dark.withOpacity(0.8)),
                      SizedBox(height: 5),
                      Text(
                        "text",
                        style: MyTextStyle.regular.copyWith(
                          fontSize: 14,
                          color: MyColors.dark.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
