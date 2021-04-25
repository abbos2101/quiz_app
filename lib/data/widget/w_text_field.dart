import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';

class WTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? iconData;
  final String hintText;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final bool showButton;
  final VoidCallback? onPressedShow;
  final Color? fillColor;

  WTextField({
    this.controller,
    this.iconData,
    this.hintText = "",
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false,
    this.showButton = false,
    this.onPressedShow,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: iconData == null ? null : _prefixIcon(),
        suffixIcon: _suffixIcon(),
        fillColor: fillColor ?? MyColors.grey.withOpacity(0.1),
        filled: true,
        enabledBorder: _enabledBorder(),
        focusedBorder: _focusedBorder(),
      ),
    );
  }

  OutlineInputBorder _enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(
        color: controller == null
            ? MyColors.transparent
            : (controller!.text.isNotEmpty
                ? MyColors.primaryColor
                : MyColors.transparent),
        width: 2,
      ),
    );
  }

  OutlineInputBorder _focusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide(
        width: 2,
        color: MyColors.primaryColor,
      ),
    );
  }

  Icon _prefixIcon() {
    return Icon(
      iconData,
      color: controller == null
          ? null
          : (controller!.text.isNotEmpty ? MyColors.primaryColor : null),
    );
  }

  Widget _suffixIcon() {
    if (controller == null || showButton == false) return SizedBox();
    return controller!.text.isEmpty
        ? SizedBox()
        : MaterialButton(
            minWidth: 80,
            shape: CircleBorder(),
            padding: EdgeInsets.all(0),
            onPressed: onPressedShow,
            child: Icon(
              obscureText ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
              color: MyColors.grey,
            ),
          );
  }
}
