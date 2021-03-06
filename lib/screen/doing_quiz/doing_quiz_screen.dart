import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/screen/leader_board/leader_board_screen.dart';
import 'bloc/doing_quiz_bloc.dart';
import 'widget/widget.dart';

class DoingQuizScreen extends StatefulWidget {
  @override
  _DoingQuizScreenState createState() => _DoingQuizScreenState();
}

class _DoingQuizScreenState extends State<DoingQuizScreen> {
  final DoingQuizBloc bloc = DoingQuizBloc();

  @override
  void initState() {
    bloc.add(LaunchEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: SafeArea(
          child: BlocBuilder<DoingQuizBloc, DoingQuizState>(
            builder: (context, state) {
              if (state is InitialState) return SizedBox();
              if (state is QuestState)
                return WQuest(
                  title: state.title,
                  time: state.time,
                  question: state.question,
                  text1: state.text1,
                  text2: state.text2,
                  text3: state.text3,
                  text4: state.text4,
                  onPressedItem: (index) => bloc.add(
                    PressedItemEvent(index: index),
                  ),
                );
              if (state is AnswerState)
                return WQuest(
                  index: state.index,
                  title: state.title,
                  time: state.time,
                  question: state.question,
                  text1: state.text1,
                  text2: state.text2,
                  text3: state.text3,
                  text4: state.text4,
                  onPressedItem: (index) => bloc.add(
                    PressedItemEvent(index: index),
                  ),
                  onPressedNext: () => bloc.add(PressedNextEvent()),
                );
              if (state is FinishState)
                return WFinish(
                  title: state.title,
                  description: state.description,
                  ball: state.ball,
                  rate: state.rate,
                  onPressedLeader: () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (_) => LeaderBoardScreen()));
                  },
                  onPressedHome: () => Navigator.pop(context),
                );
              throw Exception("$state is not found");
            },
          ),
        ),
      ),
    );
  }
}
