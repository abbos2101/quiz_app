import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'widget/w_body.dart';

class HomeScreen extends StatefulWidget {
  static Widget screen() => HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.screen,
      body: WBody(),
    );
  }
}
