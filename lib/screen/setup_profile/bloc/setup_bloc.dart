import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'setup_event.dart';
part 'setup_state.dart';

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  SetupBloc() : super(InitialState());

  @override
  Stream<SetupState> mapEventToState(
    SetupEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
