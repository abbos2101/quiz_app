import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'package:quiz_app/data/widget/w_transparent.dart';
import 'package:quiz_app/screen/sign/sign_screen.dart';

class DLogout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WTransparent(
      visible: true,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        top: 60,
                        bottom: 20,
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Are You Sure?",
                            style: MyTextStyle.bold.copyWith(fontSize: 24),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: Text(
                              "Do you still want to logout? But you can easily login to Cizo later.",
                              style: MyTextStyle.regular.copyWith(
                                color: MyColors.dark.withOpacity(0.6),
                              ),
                              textAlign: TextAlign.center,
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
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Cancel",
                              style: MyTextStyle.bold.copyWith(
                                fontSize: 18,
                                color: MyColors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: MyColors.primaryColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              padding: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {
                                while (Navigator.canPop(context))
                                  Navigator.pop(context);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => SignScreen.screen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Logout",
                                style: MyTextStyle.bold.copyWith(
                                  fontSize: 18,
                                  color: MyColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [BoxShadow(color: MyColors.grey, blurRadius: 1)],
                ),
                child: Image.asset(
                  "assets/img/img_sad.png",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
