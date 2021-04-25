import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quiz_code_event.dart';

part 'quiz_code_state.dart';

class QuizCodeBloc extends Bloc<QuizCodeEvent, QuizCodeState> {
  QuizCodeBloc() : super(InitialState());

  @override
  Stream<QuizCodeState> mapEventToState(QuizCodeEvent event) async* {
    if (event is LaunchEvent) yield* _eventLaunch(event);
  }

  Stream<QuizCodeState> _eventLaunch(LaunchEvent event) async* {
    yield LoadingState();
    await Future.delayed(Duration(seconds: 2));
    if (event.text == "AAA")
      yield FoundState(
        name: "${event.text} - Biologi Quiz IX",
        author: "Alley Christie",
      );
    else
      yield NotFoundState(name: "${event.text} - Biologi Quiz IX");
  }
}
