import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WVerify extends StatelessWidget {
  final String email;
  final VoidCallback? onPressed;

  WVerify({required this.email, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/img/img_found.png",
              height: 150,
              width: 150,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Text(
                    "Fantastic!",
                    style: MyTextStyle.bold.copyWith(fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "We have sent 4 digits confirmation code to ",
                          style: MyTextStyle.regular.copyWith(
                            color: MyColors.dark.withOpacity(0.8),
                          ),
                        ),
                        TextSpan(
                          text: email,
                          style: MyTextStyle.normal.copyWith(
                            color: MyColors.dark.withOpacity(0.8),
                          ),
                        ),
                        TextSpan(
                          text: ", please take a look and verify it.",
                          style: MyTextStyle.regular.copyWith(
                            color: MyColors.dark.withOpacity(0.8),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    padding: EdgeInsets.all(0),
                    color: MyColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Verify Now",
                      style: MyTextStyle.bold.copyWith(
                        color: MyColors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
