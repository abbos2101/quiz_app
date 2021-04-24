import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/public_quiz/public_quiz_screen.dart';
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
      home: PublicQuizScreen.screen(),
    );
  }
}
