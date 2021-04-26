import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/widget/w_background.dart';

class ResetScreen extends StatefulWidget {
  static Widget screen() => ResetScreen();

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      appBar: AppBar(title: Text("Reset Password")),
      body: WBackground(
        visible: true,
        child: Column(
          children: [
            Expanded(child: SizedBox()),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
