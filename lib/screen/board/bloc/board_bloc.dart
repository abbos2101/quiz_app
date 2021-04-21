import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/data/hive/hive_db.dart';
import 'package:quiz_app/di/locator.dart';
import 'package:quiz_app/screen/sign/sign_screen.dart';

part 'board_event.dart';

part 'board_state.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState> {
  final BuildContext context;

  final HiveDB _hive = locator.get();

  BoardBloc(this.context) : super(InitialState());
  int _index = 0;

  @override
  Stream<BoardState> mapEventToState(BoardEvent event) async* {
    if (event is LaunchEvent)
      yield* _eventLaunch(event);
    else if (event is NextEvent) yield* _eventNext(event);
  }

  Stream<BoardState> _eventLaunch(LaunchEvent event) async* {
    yield _getDataState(0);
  }

  Stream<BoardState> _eventNext(NextEvent event) async* {
    _index++;
    if (_index > 2) {
      await _hive.setBoard(false);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => SignScreen.screen(),
        ),
      );
      return;
    }
    yield _getDataState(_index);
  }

  DataState _getDataState(int index) {
    if (index == 0)
      return DataState(
        index: index,
        title: "Welcome to Cizo!",
        description:
            "Thank you for downloading our app! Enjoy all of Cizo features directly in your hands!",
        buttonText: "Next",
      );
    if (index == 1)
      return DataState(
        index: index,
        title: "Trusted by Teachers",
        description:
            "Cizo is trusted by the teachers worldwide to maintain the student learning progress.",
        buttonText: "Next",
      );
    return DataState(
      index: index,
      title: "Get Ready, be a Superstar!",
      description:
          "Gather all the poins as much as you can, be a superstar in your class with Cizo!",
      buttonText: "Start the Journey!",
    );
  }
}
