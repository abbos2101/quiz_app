import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/screen/doing_quiz/doing_quiz_screen.dart';

class WList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.only(bottom: 20, left: 2, right: 2, top: 2),
        decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)]),
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DoingQuizScreen.screen()),
            );
          },
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: MyColors.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset("assets/img/img_item.png"),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Mathematics XI-2",
                    style: MyTextStyle.bold.copyWith(fontSize: 20),
                  ),
                  Text(
                    "THG89X",
                    style: MyTextStyle.regular.copyWith(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
