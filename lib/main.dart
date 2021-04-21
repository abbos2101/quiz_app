import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: MyColors.primaryColor),
      home: SplashScreen.screen(),
    );
  }
}
