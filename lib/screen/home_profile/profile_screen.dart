import 'package:flutter/material.dart';

class HomeProfileScreen extends StatefulWidget {
  static Widget screen() => HomeProfileScreen();

  @override
  _HomeProfileScreenState createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
    );
  }
}
