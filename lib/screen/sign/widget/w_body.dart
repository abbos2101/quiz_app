import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/screen/sign_login/login_screen.dart';
import 'package:quiz_app/screen/sign_signup/signup_screen.dart';
import '../sign_imp.dart';
import 'package:quiz_app/data/widget/widget.dart';

class WBody extends StatelessWidget {
  final bool isLogin;
  final bool loading;
  final VoidCallback? onPressedLogin;
  final VoidCallback? onPressedSignup;
  final SignImp? imp;

  const WBody({
    required this.isLogin,
    this.loading = false,
    this.onPressedLogin,
    this.onPressedSignup,
    this.imp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyColors.primaryColor,
      child: Stack(
        children: [
          _widgetBackground(),
          _widgetMain(),
          _widgetImg(),
          WLoading(visible: loading),
        ],
      ),
    );
  }

  Widget _widgetBackground() {
    return WBackground(visible: true);
  }

  Widget _widgetMain() {
    return Column(
      children: [
        Expanded(child: SizedBox()),
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.only(left: 30, right: 30, top: 60),
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: WButton(
                          color: MyColors.primaryColor,
                          margin: EdgeInsets.all(10),
                          circular: 20,
                          text: "Login",
                          selected: isLogin,
                          onPressed: onPressedLogin,
                        ),
                      ),
                      Expanded(
                        child: WButton(
                          color: MyColors.primaryColor,
                          margin: EdgeInsets.all(10),
                          circular: 20,
                          text: "Sign Up",
                          selected: !isLogin,
                          onPressed: onPressedSignup,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Builder(
                    builder: (BuildContext context) {
                      if (isLogin) return LoginScreen.screen(imp: imp);
                      return SignupScreen.screen(imp: imp);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _widgetImg() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Image.asset(
              "assets/img/img_sign.png",
              width: 100,
              height: 100,
            ),
          ),
        ),
        Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
