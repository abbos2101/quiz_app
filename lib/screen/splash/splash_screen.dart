import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/util/color.dart';
import 'bloc/splash_bloc.dart';
import 'widget/widget.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashBloc bloc;

  @override
  void initState() {
    bloc = SplashBloc(context);
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
        backgroundColor: MyColors.white,
        body: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if (state is InitialState) return WInitial();
            if (state is SloganState) return WSlogan();
            if (state is LastState) return WLast();
            throw Exception("$state is not found");
          },
        ),
      ),
    );
  }
}
