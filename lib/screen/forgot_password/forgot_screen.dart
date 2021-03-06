import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/widget/widget.dart';
import 'package:quiz_app/screen/reset_password/reset_password_screen.dart';
import 'bloc/forgot_bloc.dart';
import 'widget/widget.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final ForgotBloc bloc = ForgotBloc();
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        backgroundColor: MyColors.primaryColor,
        body: WBackground(
          alignment: Alignment.bottomCenter,
          visible: true,
          child: BlocBuilder<ForgotBloc, ForgotState>(
            builder: (context, state) {
              if (state is InitialState)
                return WInitial(
                  controller: controller,
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    bloc.add(ConfirmEvent(email: controller.text));
                  },
                );
              if (state is VerifyState)
                return WVerify(
                  email: state.email,
                  onPressed: () {
                    controller.clear();
                    bloc.add(VerifyEvent());
                  },
                );
              if (state is VerifyCodeState)
                return WVerifyCode(
                  controller: controller,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (_) => ResetPasswordScreen()),
                    );
                  },
                );
              throw Exception("$state is not found");
            },
          ),
        ),
      ),
    );
  }
}
