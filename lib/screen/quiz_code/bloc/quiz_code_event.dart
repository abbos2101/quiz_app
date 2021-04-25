part of 'quiz_code_bloc.dart';

@immutable
abstract class QuizCodeEvent {}

class LaunchEvent extends QuizCodeEvent {
  final String text;

  LaunchEvent({required this.text});
}
