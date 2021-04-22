import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';
import 'w_image_picker.dart';
import 'w_item.dart';

class WBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 20),
          WImagePicker(),
          SizedBox(height: 20),
          Text(
            "Robert Fodie",
            style: MyTextStyle.bold.copyWith(fontSize: 24),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: MyColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Text(
              "robert12fodie@gmail.com",
              style: MyTextStyle.normal.copyWith(
                fontSize: 14,
                color: MyColors.primaryColor,
              ),
            ),
          ),
          WItem(iconData: CupertinoIcons.person,text: "Edit Profile"),
          WItem(iconData: CupertinoIcons.lock,text: "Change Password"),
          WItem(iconData: Icons.logout,text: "Logout"),
        ],
      ),
    );
  }
}
