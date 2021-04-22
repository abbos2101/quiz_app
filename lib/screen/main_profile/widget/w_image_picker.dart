import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';

class WImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(width: 4, color: MyColors.white),
            color: MyColors.primaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Icon(
            Icons.person,
            size: 60,
            color: MyColors.primaryColor.withOpacity(0.6),
          ),
        ),
        Container(
          width: 120,
          height: 140,
          alignment: Alignment.bottomCenter,
          child: MaterialButton(
            minWidth: 40,
            height: 40,
            padding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: MyColors.white,
            onPressed: () {},
            child: Icon(
              Icons.camera_alt_outlined,
              color: MyColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
