import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WConfirmButton extends StatelessWidget {
  final VoidCallback? onPressed;

  WConfirmButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      color: MyColors.primaryColor,
      disabledColor: MyColors.primaryColor.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "Confirm",
        style: MyTextStyle.bold.copyWith(color: MyColors.white),
      ),
      onPressed: onPressed,
    );
  }
}
