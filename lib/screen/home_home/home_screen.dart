import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'widget/w_body.dart';

class HomeHomeScreen extends StatefulWidget {
  static Widget screen() => HomeHomeScreen();

  @override
  _HomeHomeScreenState createState() => _HomeHomeScreenState();
}

class _HomeHomeScreenState extends State<HomeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.screen,
      body: WBody(),
    );
  }
}
