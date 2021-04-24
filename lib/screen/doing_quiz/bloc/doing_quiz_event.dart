part of 'doing_quiz_bloc.dart';

@immutable
abstract class DoingQuizEvent {}

class LaunchEvent extends DoingQuizEvent {}

class PressedItemEvent extends DoingQuizEvent {
  final int index;

  PressedItemEvent({required this.index});
}

class PressedNextEvent extends DoingQuizEvent {}
