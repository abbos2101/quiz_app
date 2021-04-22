import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WBoard extends StatelessWidget {
  final int index;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onPressed;

  WBoard({
    this.index = 0,
    this.title = "",
    this.description = "",
    this.buttonText = "",
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyColors.screen,
      child: Column(
        children: [
          SizedBox(height: 60),
          Expanded(flex: 5, child: _widgetImage()),
          Expanded(child: SizedBox()),
          Expanded(flex: 4, child: _widgetBottom()),
        ],
      ),
    );
  }

  Widget _widgetImage() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Image.asset(
        "assets/img/img_board${index + 1}.png",
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _widgetBottom() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              blurRadius: 10,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Expanded(
            child: Text(
              "$title",
              style: MyTextStyle.bold.copyWith(fontSize: 24),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 10,
                bottom: 10,
              ),
              child: Text("$description", style: MyTextStyle.regular),
            ),
          ),
          SizedBox(
            height: 10,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                if (this.index == index)
                  return Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 40,
                      height: 10,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                return Container(
                  width: 10,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: MyColors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 60,
              padding: EdgeInsets.all(0),
              color: MyColors.primaryColor,
              disabledColor: MyColors.primaryColor.withOpacity(0.6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: onPressed,
              textColor: MyColors.white,
              child: Text(
                buttonText,
                style: MyTextStyle.regular.copyWith(
                  fontSize: 18,
                  color: MyColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
