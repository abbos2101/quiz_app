import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/widget/w_text_field.dart';

class WTextFieldConfirm extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onPressedShow;
  final bool obscureText;

  WTextFieldConfirm({
    required this.controller,
    this.onPressedShow,
    this.obscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    return WTextField(
      iconData: CupertinoIcons.lock,
      controller: controller,
      hintText: "Confirm new password",
      obscureText: obscureText,
      showButton: true,
      onPressedShow: onPressedShow,
    );
  }
}
