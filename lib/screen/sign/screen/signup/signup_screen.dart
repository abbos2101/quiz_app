import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/screen/setup_profile/setup_screen.dart';
import '../../sign_imp.dart';
import '../../widget/w_text_field.dart';

class SignupScreen extends StatefulWidget {
  static Widget screen({SignImp? imp}) => SignupScreen(imp);

  final SignImp? imp;

  const SignupScreen(this.imp);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final ctrlFullName = TextEditingController();
  final ctrlMail = TextEditingController();
  final ctrlPassword = TextEditingController();
  bool enabled = false;
  bool obscureText = true;

  @override
  void initState() {
    ctrlFullName.addListener(onChanged);
    ctrlMail.addListener(onChanged);
    ctrlPassword.addListener(onChanged);
    super.initState();
  }

  @override
  void dispose() {
    ctrlFullName.dispose();
    ctrlMail.dispose();
    ctrlPassword.dispose();
    super.dispose();
  }

  void onChanged() {
    enabled = ctrlFullName.text.isNotEmpty &&
        ctrlMail.text.isNotEmpty &&
        ctrlPassword.text.isNotEmpty;
    setState(() {});
  }

  void onPressed() async {
    if (widget.imp != null) {
      FocusScope.of(context).requestFocus(FocusNode());
      widget.imp!.showLoading(true);
      await Future.delayed(Duration(seconds: 3));
      widget.imp!.showLoading(false);

      ctrlFullName.clear();
      ctrlMail.clear();
      ctrlPassword.clear();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => SetupScreen.screen()),
      );
    }
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
                "Full Name",
                style: MyTextStyle.regular.copyWith(fontSize: 13),
              ),
              SizedBox(height: 10),
              WTextField(
                controller: ctrlFullName,
                iconData: CupertinoIcons.person,
                hintText: "Enter your full name",
              ),
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
                  "Sign Up",
                  style: MyTextStyle.bold.copyWith(
                    fontSize: 18,
                    color: enabled ? MyColors.white : MyColors.grey,
                  ),
                ),
                onPressed: enabled ? onPressed : null,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
