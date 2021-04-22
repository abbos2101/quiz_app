import 'package:flutter/material.dart';
import 'widget/w_body.dart';

class ProfileScreen extends StatefulWidget {
  static Widget screen() => ProfileScreen();

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WBody());
  }
}
