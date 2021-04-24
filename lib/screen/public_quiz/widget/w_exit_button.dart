import 'package:flutter/material.dart';

class WExitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 50,
      height: 50,
      padding: EdgeInsets.all(0),
      shape: CircleBorder(),
      onPressed: () => Navigator.pop(context),
      child: Icon(Icons.keyboard_backspace, size: 30),
    );
  }
}
