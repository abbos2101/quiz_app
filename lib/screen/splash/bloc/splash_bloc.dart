import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/data/hive/hive_db.dart';
import 'package:quiz_app/di/locator.dart';
import 'package:quiz_app/screen/board/board_screen.dart';
import 'package:quiz_app/screen/sign/sign_screen.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final BuildContext context;
  final HiveDB _hive = locator.get();

  SplashBloc(this.context) : super(InitialState());

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is LaunchEvent) yield* _eventLaunch(event);
  }

  Stream<SplashState> _eventLaunch(LaunchEvent event) async* {
    yield InitialState();
    await Future.delayed(Duration(seconds: 2));
    yield SloganState();
    await Future.delayed(Duration(seconds: 2));
    yield LastState();
    await Future.delayed(Duration(seconds: 2));
    if (await _hive.isBoard()) {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (_) => BoardScreen()),
      );
      return;
    }
    if (await _hive.isLogin()) {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(builder: (_) => SignScreen(true)),
      );
      return;
    }
  }
}
