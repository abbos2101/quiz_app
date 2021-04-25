import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/screen/doing_quiz/doing_quiz_screen.dart';
import 'bloc/quiz_code_bloc.dart';
import 'widget/widget.dart';

class QuizCodeScreen extends StatefulWidget {
  static Widget screen({required String text}) => BlocProvider(
        create: (context) => QuizCodeBloc(),
        child: QuizCodeScreen(text),
      );

  final String text;

  QuizCodeScreen(this.text);

  @override
  _QuizCodeScreenState createState() => _QuizCodeScreenState();
}

class _QuizCodeScreenState extends State<QuizCodeScreen> {
  late QuizCodeBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<QuizCodeBloc>(context);
    bloc.add(LaunchEvent(text: widget.text));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.screen,
      body: SafeArea(
        child: BlocBuilder<QuizCodeBloc, QuizCodeState>(
          builder: (context, state) {
            if (state is InitialState) return SizedBox();
            if (state is LoadingState) return WLoading();
            if (state is FoundState)
              return WFound(
                name: state.name,
                author: state.author,
                onPressedEnter: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => DoingQuizScreen.screen()),
                  );
                },
              );
            if (state is NotFoundState)
              return WNotFound(
                name: state.name,
                onPressedSearch: () => Navigator.pop(context, true),
                onPressedHome: () => Navigator.pop(context),
              );
            throw Exception("$state is not found");
          },
        ),
      ),
    );
  }
}
