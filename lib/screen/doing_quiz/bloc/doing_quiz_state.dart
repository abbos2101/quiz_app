part of 'doing_quiz_bloc.dart';

@immutable
abstract class DoingQuizState {}

class InitialState extends DoingQuizState {}

class QuestState extends DoingQuizState {
  final String title;
  final String time;
  final String question;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  QuestState({
    this.title = "",
    this.time = "",
    this.question = "",
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
  });
}

class AnswerState extends DoingQuizState {
  final int index;
  final String title;
  final String time;
  final String question;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  AnswerState({
    this.index = 0,
    this.title = "",
    this.time = "",
    this.question = "",
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
  });
}

class FinishState extends DoingQuizState {
  final String title;
  final String description;
  final int ball;
  final int rate;

  FinishState({
    this.title = "",
    this.description = "",
    this.ball = 0,
    this.rate = 0,
  });
}
