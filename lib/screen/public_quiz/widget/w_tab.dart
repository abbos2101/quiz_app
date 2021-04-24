import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WTab extends StatelessWidget {
  final int index;
  final VoidCallback? onPressedAll;
  final VoidCallback? onPressedRecent;

  WTab({this.index = 0, this.onPressedAll, this.onPressedRecent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: MyColors.grey,
            blurRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: _Item(
              active: index == 0,
              text: "All",
              onPressed: onPressedAll,
            ),
          ),
          Expanded(
            child: _Item(
              active: index == 1,
              text: "Recent",
              onPressed: onPressedRecent,
            ),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final bool active;
  final String text;
  final VoidCallback? onPressed;

  _Item({this.active = true, this.text = "", this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (active)
      return MaterialButton(
        minWidth: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(0),
        color: MyColors.primaryColor,
        disabledColor: MyColors.primaryColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: MyTextStyle.bold.copyWith(color: MyColors.white),
        ),
      );
    return MaterialButton(
      minWidth: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: MyTextStyle.regular.copyWith(
          color: MyColors.dark.withOpacity(0.6),
        ),
      ),
    );
  }
}
