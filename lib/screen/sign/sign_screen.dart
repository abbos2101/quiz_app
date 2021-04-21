import 'package:flutter/material.dart';
import 'sign_imp.dart';
import 'package:quiz_app/screen/sign/widget/w_body.dart';

class SignScreen extends StatefulWidget {
  static Widget screen({bool isLogin = true}) => SignScreen(isLogin);

  final bool isLogin;

  const SignScreen(this.isLogin);

  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> implements SignImp {
  late bool isLogin;
  bool loading = false;

  @override
  void initState() {
    isLogin = widget.isLogin;
    super.initState();
  }

  void setType({bool isLogin = true}) => setState(() => this.isLogin = isLogin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WBody(
        isLogin: isLogin,
        loading: loading,
        onPressedLogin: () => setType(),
        onPressedSignup: () => setType(isLogin: false),
        imp: this,
      ),
    );
  }

  @override
  void showLoading(bool value) => setState(() => loading = value);
}
