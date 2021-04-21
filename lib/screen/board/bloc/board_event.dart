part of 'board_bloc.dart';

@immutable
abstract class BoardEvent {}

class LaunchEvent extends BoardEvent {}

class NextEvent extends BoardEvent {}
