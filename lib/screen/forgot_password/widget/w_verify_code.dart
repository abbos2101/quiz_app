import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_text_field.dart';

class WVerifyCode extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? onPressed;

  WVerifyCode({required this.controller, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(child: SizedBox()),
              Expanded(
                child: Container(
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
                            "Verification",
                            style: MyTextStyle.bold.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Enter the 4 digits code that we already sent you through your email, check your spam box if you need.",
                                style: MyTextStyle.regular.copyWith(
                                  color: MyColors.dark.withOpacity(0.6),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: double.infinity,
                                height: 100.0,
                                alignment: Alignment.center,
                                child: PinCodeTextField(
                                  controller: controller,
                                  highlight: true,
                                  pinBoxColor: MyColors.grey.withOpacity(0.1),
                                  highlightPinBoxColor: MyColors.white,
                                  highlightColor: MyColors.primaryColor,
                                  defaultBorderColor:
                                      MyColors.grey.withOpacity(0.1),
                                  hasTextBorderColor: MyColors.primaryColor,
                                  pinBoxWidth: 60,
                                  pinBoxRadius: 30,
                                  pinBoxDecoration: ProvidedPinBoxDecoration
                                      .defaultPinBoxDecoration,
                                  pinTextStyle:
                                      MyTextStyle.bold.copyWith(fontSize: 24),
                                  pinTextAnimatedSwitcherTransition:
                                      ProvidedPinBoxTextAnimation
                                          .scalingTransition,
                                  pinTextAnimatedSwitcherDuration:
                                      Duration(milliseconds: 300),
                                ),
                              ),
                              SizedBox(height: 20),
                              MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                padding: EdgeInsets.all(0),
                                color: MyColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  side: BorderSide(
                                    width: 2,
                                    color: controller.text.length == 4
                                        ? MyColors.transparent
                                        : MyColors.grey,
                                  ),
                                ),
                                child: Text(
                                  "Confirm",
                                  style: MyTextStyle.bold.copyWith(
                                    fontSize: 18,
                                    color: controller.text.length == 4
                                        ? MyColors.white
                                        : MyColors.grey,
                                  ),
                                ),
                                onPressed: controller.text.length == 4
                                    ? onPressed
                                    : null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30),
            child: Image.asset("assets/img/img_setup.png", height: 80),
          ),
        ],
      ),
    );
  }
}
