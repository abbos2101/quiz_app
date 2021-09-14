import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/screen/forgot_password/forgot_screen.dart';
import 'package:quiz_app/screen/main/main_screen.dart';
import 'package:quiz_app/screen/sign/sign_imp.dart';
import 'package:quiz_app/data/widget/widget.dart';

class LoginScreen extends StatefulWidget {
  final SignImp? imp;

  const LoginScreen(this.imp);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ctrlMail = TextEditingController();
  final ctrlPassword = TextEditingController();
  bool enabled = false;
  bool obscureText = true;

  @override
  void initState() {
    ctrlMail.addListener(onChanged);
    ctrlPassword.addListener(onChanged);
    super.initState();
  }

  @override
  void dispose() {
    ctrlMail.dispose();
    ctrlPassword.dispose();
    super.dispose();
  }

  void onChanged() {
    setState(() {
      enabled = ctrlMail.text.isNotEmpty && ctrlPassword.text.isNotEmpty;
    });
  }

  void onPressedLogin() async {
    if (widget.imp != null) {
      FocusScope.of(context).requestFocus(FocusNode());
      widget.imp!.showLoading(true);
      await Future.delayed(Duration(seconds: 3));
      widget.imp!.showLoading(false);
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (_) => MainScreen()),
      );
    }
  }

  void onPressedForgot() async {
    FocusScope.of(context).requestFocus(FocusNode());
    Navigator.push(
      context,
      CupertinoPageRoute(builder: (_) => ForgotScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "E-Mail Address",
                style: MyTextStyle.regular.copyWith(fontSize: 13),
              ),
              SizedBox(height: 10),
              WTextField(
                controller: ctrlMail,
                iconData: CupertinoIcons.mail,
                hintText: "Enter your e-mail address",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              Text(
                "Password",
                style: MyTextStyle.regular.copyWith(fontSize: 13),
              ),
              SizedBox(height: 10),
              WTextField(
                controller: ctrlPassword,
                iconData: CupertinoIcons.lock,
                obscureText: obscureText,
                showButton: true,
                onPressedShow: () => setState(() => obscureText = !obscureText),
                hintText: "Create account password",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: SizedBox()),
                  CupertinoButton(
                    child: Text(
                      "Forgot Password?",
                      style: MyTextStyle.normal.copyWith(
                        color: MyColors.primaryColor,
                      ),
                    ),
                    onPressed: onPressedForgot,
                  ),
                ],
              ),
              SizedBox(height: 50),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                padding: EdgeInsets.all(0),
                color: MyColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    width: 2,
                    color: enabled ? MyColors.transparent : MyColors.grey,
                  ),
                ),
                child: Text(
                  "Login",
                  style: MyTextStyle.bold.copyWith(
                    fontSize: 18,
                    color: enabled ? MyColors.white : MyColors.grey,
                  ),
                ),
                onPressed: enabled ? onPressedLogin : null,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
