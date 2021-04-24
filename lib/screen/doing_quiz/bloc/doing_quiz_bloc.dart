import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'doing_quiz_event.dart';

part 'doing_quiz_state.dart';

class DoingQuizBloc extends Bloc<DoingQuizEvent, DoingQuizState> {
  DoingQuizBloc() : super(InitialState());

  @override
  Stream<DoingQuizState> mapEventToState(DoingQuizEvent event) async* {
    if (event is LaunchEvent)
      yield* _eventLaunch(event);
    else if (event is PressedItemEvent)
      yield* _eventPressedItem(event);
    else if (event is PressedNextEvent) yield* _eventPressedNext(event);
  }

  Stream<DoingQuizState> _eventLaunch(LaunchEvent event) async* {
    yield QuestState(
      title: "THU76X - Biologi Quiz IX",
      time: "21:01",
      question:
          "1. Which organelle is found in a plant cell and NOT an animal cell?",
      text1: "Vacuole",
      text2: "Cell Wall",
      text3: "Lyosome",
      text4: "Cell Membrane",
    );
  }

  Stream<DoingQuizState> _eventPressedItem(PressedItemEvent event) async* {
    yield AnswerState(
      index: event.index,
      title: "THU76X - Biologi Quiz IX",
      time: "21:01",
      question:
          "1. Which organelle is found in a plant cell and NOT an animal cell?",
      text1: "Vacuole",
      text2: "Cell Wall",
      text3: "Lyosome",
      text4: "Cell Membrane",
    );
  }

  Stream<DoingQuizState> _eventPressedNext(PressedNextEvent event) async* {
    yield FinishState(
      title: "THU76X - Biologi Quiz IX",
      description:
          "You got 2600 points and you are on the 6th place on this quiz leaderboard, keep it up!",
      ball: 2600,
      rate: 6,
    );
  }
}
