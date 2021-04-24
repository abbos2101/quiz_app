import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/screen/public_quiz/public_quiz_screen.dart';
import 'widget/widget.dart';

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WTitle(name: "Robert!"),
            SizedBox(height: 30),
            WSearch(),
            SizedBox(height: 10),
            WListTitle(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PublicQuizScreen.screen()),
                );
              },
            ),
            Expanded(child: WList()),
          ],
        ),
      ),
    );
  }
}
