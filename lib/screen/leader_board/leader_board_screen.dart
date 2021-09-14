import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_background.dart';
import 'my_model.dart';
import 'widget/w_item.dart';

class LeaderBoardScreen extends StatefulWidget {
  @override
  _LeaderBoardScreenState createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  final List<MyModel> list = [
    MyModel(
      level: 1,
      ball: 3200,
      fullName: "Theo Joe",
      imgUrl: "assets/img/img_place1.png",
    ),
    MyModel(
      level: 2,
      ball: 3100,
      fullName: "Theresia Lee",
      imgUrl: "assets/img/img_place2.png",
    ),
    MyModel(
      level: 3,
      ball: 3050,
      fullName: "Jack Muw",
      imgUrl: "assets/img/img_place3.png",
    ),
    MyModel(
      level: 4,
      ball: 3000,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place4.png",
    ),
    MyModel(
      level: 5,
      ball: 2900,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place5.png",
    ),
    MyModel(
      level: 6,
      ball: 2876,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place6.png",
    ),
    MyModel(
      level: 7,
      ball: 2700,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_author.png",
    ),
    MyModel(
      level: 8,
      ball: 2698,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place1.png",
    ),
    MyModel(
      level: 9,
      ball: 2540,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place2.png",
    ),
    MyModel(
      level: 10,
      ball: 2100,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place3.png",
    ),
    MyModel(
      level: 11,
      ball: 2045,
      fullName: "Mark Lyuh",
      imgUrl: "assets/img/img_place4.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            WBackground(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return WItem(
                    level: list[index].level,
                    ball: list[index].ball,
                    imgUrl: list[index].imgUrl,
                    fullName: list[index].fullName,
                  );
                },
              ),
            ),
            Positioned(
              left: 40,
              bottom: 40,
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 80,
                height: 60,
                padding: EdgeInsets.all(0),
                color: MyColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Back to Home",
                  style: MyTextStyle.bold.copyWith(
                    color: MyColors.white,
                    fontSize: 18,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
