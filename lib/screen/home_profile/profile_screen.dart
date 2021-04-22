import 'package:flutter/material.dart';
import 'widget/w_body.dart';

class HomeProfileScreen extends StatefulWidget {
  static Widget screen() => HomeProfileScreen();

  @override
  _HomeProfileScreenState createState() => _HomeProfileScreenState();
}

class _HomeProfileScreenState extends State<HomeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WBody());
  }
}
