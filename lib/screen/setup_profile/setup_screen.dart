import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/util/color.dart';
import 'bloc/setup_bloc.dart';
import 'widget/widget.dart';

class SetupScreen extends StatefulWidget {
  static Widget screen() => BlocProvider(
        create: (context) => SetupBloc(),
        child: SetupScreen(),
      );

  @override
  _SetupScreenState createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: widgetBody(),
    );
  }

  Widget widgetBody() {
    return Stack(
      children: [
        widgetBodyContent(),
        WImageTitle(),
      ],
    );
  }

  Widget widgetBodyContent() {
    return Column(
      children: [
        Expanded(child: SizedBox()),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(),
          ),
        ),
      ],
    );
  }
}
