import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'widget/widget.dart';
import 'model/quiz_model.dart';

class PublicQuizScreen extends StatefulWidget {
  static Widget screen() => PublicQuizScreen();

  @override
  _PublicQuizScreenState createState() => _PublicQuizScreenState();
}

class _PublicQuizScreenState extends State<PublicQuizScreen> {
  final List<QuizModel> quizList = [
    QuizModel(
      title: "Mathematics XI-2",
      code: "THG89X",
      date: "Posted 5 Minutes Ago",
    ),
    QuizModel(
      title: "Automotive XII",
      code: "YHO12Y",
      date: "Posted 12 Hours Ago",
    ),
    QuizModel(
      title: "Web Dev 101",
      code: "GGT89K",
      date: "Posted 18 Hours Ago",
    ),
  ];
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.screen,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WExitButton(),
              WTab(
                index: tabIndex,
                onPressedAll: () => setState(() => tabIndex = 0),
                onPressedRecent: () => setState(() => tabIndex = 1),
              ),
              Expanded(
                child: WList(
                  withDate: tabIndex == 1,
                  quizList: quizList,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
