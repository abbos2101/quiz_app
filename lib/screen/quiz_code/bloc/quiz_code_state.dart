part of 'quiz_code_bloc.dart';

@immutable
abstract class QuizCodeState {}

class InitialState extends QuizCodeState {}

class LoadingState extends QuizCodeState {}

class FoundState extends QuizCodeState {
  final String name;
  final String author;

  FoundState({required this.name, required this.author});
}

class NotFoundState extends QuizCodeState {
  final String name;

  NotFoundState({required this.name});
}
