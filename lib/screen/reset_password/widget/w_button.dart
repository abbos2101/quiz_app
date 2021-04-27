import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WButton extends StatelessWidget {
  final TextEditingController controllerNew;
  final TextEditingController controllerConfirm;
  final VoidCallback? onPressed;

  WButton({
    required this.controllerNew,
    required this.controllerConfirm,
    this.onPressed,
  });

  Color? _backgroundColor() {
    if (controllerNew.text.isNotEmpty &&
        controllerConfirm.text.isNotEmpty &&
        controllerNew.text == controllerConfirm.text)
      return MyColors.primaryColor;
  }

  Color _borderColor() {
    if (controllerNew.text.isNotEmpty &&
        controllerConfirm.text.isNotEmpty &&
        controllerNew.text == controllerConfirm.text)
      return MyColors.transparent;
    return MyColors.grey;
  }

  Color _textColor() {
    if (controllerNew.text.isNotEmpty &&
        controllerConfirm.text.isNotEmpty &&
        controllerNew.text == controllerConfirm.text) return MyColors.white;
    return MyColors.grey;
  }

  bool _isPressed() {
    if (controllerNew.text.isNotEmpty &&
        controllerConfirm.text.isNotEmpty &&
        controllerNew.text == controllerConfirm.text) if (onPressed != null)
      return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      padding: EdgeInsets.all(0),
      color: _backgroundColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: BorderSide(
          width: 2,
          color: _borderColor(),
        ),
      ),
      child: Text(
        "Reset Password",
        style: MyTextStyle.bold.copyWith(
          fontSize: 18,
          color: _textColor(),
        ),
      ),
      onPressed: _isPressed() ? onPressed! : null,
    );
  }
}
