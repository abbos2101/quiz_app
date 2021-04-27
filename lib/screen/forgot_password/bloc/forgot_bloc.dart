import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'forgot_event.dart';

part 'forgot_state.dart';

class ForgotBloc extends Bloc<ForgotEvent, ForgotState> {
  ForgotBloc() : super(InitialState());

  @override
  Stream<ForgotState> mapEventToState(ForgotEvent event) async* {
    if (event is ConfirmEvent)
      yield* _eventConfirm(event);
    else if (event is VerifyEvent)
      yield* _eventVerify(event);
    else if (event is VerifyCodeEvent) yield* _eventVerifyCode(event);
  }

  Stream<ForgotState> _eventConfirm(ConfirmEvent event) async* {
    yield VerifyState(email: event.email);
  }

  Stream<ForgotState> _eventVerify(VerifyEvent event) async* {
    yield VerifyCodeState();
  }

  Stream<ForgotState> _eventVerifyCode(VerifyCodeEvent event) async* {}
}
