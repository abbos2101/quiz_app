import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_text_field.dart';

class WInitial extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onPressed;

  WInitial({required this.controller, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        "Forgot Password",
                        style: MyTextStyle.bold.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Forgot your password? don’t worry, just take a simple step and create your new password!",
                        style: MyTextStyle.regular.copyWith(
                          color: MyColors.dark.withOpacity(0.6),
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        "E-Mail Address",
                        style: MyTextStyle.regular.copyWith(
                          color: MyColors.dark.withOpacity(0.8),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 10),
                      WTextField(
                        iconData: Icons.mail_outline,
                        controller: controller,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 40),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        padding: EdgeInsets.all(0),
                        color: MyColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                            width: 2,
                            color: controller.text.isNotEmpty
                                ? MyColors.transparent
                                : MyColors.grey,
                          ),
                        ),
                        child: Text(
                          "Confirm",
                          style: MyTextStyle.bold.copyWith(
                            fontSize: 18,
                            color: controller.text.isNotEmpty
                                ? MyColors.white
                                : MyColors.grey,
                          ),
                        ),
                        onPressed:
                            controller.text.isNotEmpty ? onPressed : null,
                      ),
                    ],
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
      ],
    );
  }
}
