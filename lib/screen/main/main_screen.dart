import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/widget/w_transparent.dart';
import 'widget/w_bottom_navigation.dart';
import 'widget/w_explore_dialog.dart';
import 'package:quiz_app/screen/main_home/home_screen.dart';
import 'package:quiz_app/screen/main_profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  static Widget screen() => MainScreen();

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            if (index == 0) body = HomeScreen.screen();
            if (index == 2) body = ProfileScreen.screen();
            if (index == 1) body = Stack(children: [body, WTransparent()]);
            return body;
          },
        ),
      ),
      bottomNavigationBar: WBottomNavigation(
        index: index,
        onTap: (value) async {
          setState(() => index = value);
          if (index == 1) {
            await showDialog(
              context: context,
              builder: (_) => WExploreDialog(),
            );
            setState(() => index = 0);
          }
        },
        child: body,
      ),
    );
  }
}
