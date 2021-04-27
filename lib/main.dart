import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/screen/forgot_password/forgot_screen.dart';
import 'package:quiz_app/screen/leader_board/leader_board_screen.dart';
import 'package:quiz_app/screen/reset_password/reset_password_screen.dart';
import 'package:quiz_app/screen/setup_profile/setup_screen.dart';
import 'package:quiz_app/screen/sign/sign_screen.dart';
import 'screen/splash/splash_screen.dart';
import 'di/locator.dart';
import 'data/util/color.dart';

void main() {
  locatorSetup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: MyColors.primaryColor),
      home: LeaderBoardScreen.screen(),
    );
  }
}