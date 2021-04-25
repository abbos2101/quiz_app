import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WNotFound extends StatelessWidget {
  final String name;
  final VoidCallback? onPressedSearch;
  final VoidCallback? onPressedHome;

  WNotFound({required this.name, this.onPressedSearch, this.onPressedHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: MyColors.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: _Top()),
          Expanded(
            child: _Bottom(
              name: name,
              onPressedSearch: onPressedSearch,
              onPressedHome: onPressedHome,
            ),
          ),
        ],
      ),
    );
  }
}

class _Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primaryColor,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            minWidth: 60,
            height: 60,
            shape: CircleBorder(),
            child: Icon(
              Icons.keyboard_backspace_outlined,
              color: MyColors.white,
              size: 35,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(child: SizedBox()),
          Expanded(
            flex: 3,
            child: SizedBox(
              width: double.infinity,
              child: Image.asset("assets/img/img_not_found.png"),
            ),
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}

class _Bottom extends StatelessWidget {
  final String name;
  final VoidCallback? onPressedSearch;
  final VoidCallback? onPressedHome;

  _Bottom({required this.name, this.onPressedSearch, this.onPressedHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: MyColors.screen,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Text(
            "Oops, We Can’t Find That!",
            style: MyTextStyle.bold.copyWith(fontSize: 24),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MyColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              name,
              style: MyTextStyle.bold.copyWith(color: MyColors.primaryColor),
            ),
          ),
          Expanded(child: SizedBox()),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            padding: EdgeInsets.all(0),
            color: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Search Another Code",
              style: MyTextStyle.bold.copyWith(
                fontSize: 18,
                color: MyColors.white,
              ),
            ),
            onPressed: onPressedHome,
          ),
          SizedBox(height: 30),
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
              child: Text(
                "Back to Home",
                style: MyTextStyle.bold.copyWith(
                  fontSize: 18,
                  color: MyColors.primaryColor,
                ),
              ),
              onPressed: onPressedHome,
            ),
          ),
        ],
      ),
    );
  }
}
