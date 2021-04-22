import 'package:flutter/material.dart';

class HomeHomeScreen extends StatefulWidget {
  static Widget screen() => HomeHomeScreen();

  @override
  _HomeHomeScreenState createState() => _HomeHomeScreenState();
}

class _HomeHomeScreenState extends State<HomeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
    );
  }
}
