part of 'board_bloc.dart';

@immutable
abstract class BoardState {}

class InitialState extends BoardState {}

class DataState extends BoardState {
  final int index;
  final String title;
  final String description;
  final String buttonText;

  DataState({
    required this.index,
    required this.title,
    required this.description,
    required this.buttonText,
  });
}
