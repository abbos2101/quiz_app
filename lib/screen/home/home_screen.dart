import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/screen/home_home/home_screen.dart';
import 'package:quiz_app/screen/home_profile/profile_screen.dart';
import 'widget/w_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  static Widget screen() => HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  Widget body = SizedBox();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyColors.screen,
      body: SafeArea(
        child: Builder(
          builder: (context) {
            if (index == 0) body = HomeHomeScreen.screen();
            if (index == 2) body = HomeProfileScreen.screen();
            return body;
          },
        ),
      ),
      bottomNavigationBar: WBottomNavigation(
        index: index,
        onTap: (value) => setState(() => index = value),
        child: body,
      ),
    );
  }
}
