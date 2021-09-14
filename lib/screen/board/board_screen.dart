import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/board_bloc.dart';
import 'widget/w_board.dart';

class BoardScreen extends StatefulWidget {
  @override
  _BoardScreenState createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  late BoardBloc bloc;

  @override
  void initState() {
    bloc = BoardBloc(context);
    bloc.add(LaunchEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        body: BlocBuilder<BoardBloc, BoardState>(
          builder: (context, state) {
            if (state is InitialState)
              return Center(child: CircularProgressIndicator());
            if (state is DataState)
              return WBoard(
                index: state.index,
                title: state.title,
                description: state.description,
                buttonText: state.buttonText,
                onPressed: () => bloc.add(NextEvent()),
              );
            throw Exception("$state is not found");
          },
        ),
      ),
    );
  }
}
