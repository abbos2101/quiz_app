import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_background.dart';
import 'package:quiz_app/screen/sign/sign_screen.dart';
import 'widget/widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  static Widget screen() => ResetPasswordScreen();

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController ctrlNew = TextEditingController();
  final TextEditingController ctrlConfirm = TextEditingController();
  bool obscureNew = true;
  bool obscureConfirm = true;

  @override
  void initState() {
    ctrlNew.addListener(() => setState(() {}));
    ctrlConfirm.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    ctrlNew.dispose();
    ctrlConfirm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: WBackground(
        visible: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 40,
                    bottom: 40,
                  ),
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          MaterialButton(
                            minWidth: 50,
                            height: 50,
                            padding: EdgeInsets.all(0),
                            shape: CircleBorder(),
                            child: Icon(Icons.keyboard_backspace,
                                color: MyColors.dark, size: 40),
                            onPressed: () => Navigator.pop(context),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Reset Password",
                            style: MyTextStyle.bold.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        "Create your new password in Cizo, keep in mind and remember it!",
                        style: MyTextStyle.regular.copyWith(
                          color: MyColors.dark.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Create New Password",
                        style: MyTextStyle.regular.copyWith(
                          color: MyColors.dark.withOpacity(0.8),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 5),
                      WTextFieldNew(
                        controller: ctrlNew,
                        obscureText: obscureNew,
                        onPressedShow: () {
                          setState(() => obscureNew = !obscureNew);
                        },
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Confirm New Password",
                        style: MyTextStyle.regular.copyWith(
                          color: MyColors.dark.withOpacity(0.8),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 10),
                      WTextFieldConfirm(
                        controller: ctrlConfirm,
                        obscureText: obscureConfirm,
                        onPressedShow: () {
                          setState(() => obscureConfirm = !obscureConfirm);
                        },
                      ),
                      SizedBox(height: 20),
                      WButton(
                        controllerNew: ctrlNew,
                        controllerConfirm: ctrlConfirm,
                        onPressed: () {
                          while (Navigator.canPop(context))
                            Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SignScreen.screen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 30,
                  child: Image.asset("assets/img/img_setup.png", height: 80),
                ),
              ],
            ),
            // Container(
            //   color: MyColors.white,
            // ),
          ],
        ),
      ),
    );
  }
}
