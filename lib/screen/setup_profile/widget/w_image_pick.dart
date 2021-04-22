import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/util/color.dart';
import 'package:quiz_app/data/util/style.dart';

class WImagePick extends StatelessWidget {
  final File? imageFile;
  final VoidCallback? onPressed;

  WImagePick({this.imageFile, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: double.infinity),
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: MyColors.primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
            image: imageFile == null
                ? null
                : DecorationImage(
                    image: FileImage(imageFile!),
                    fit: BoxFit.contain,
                  ),
          ),
          child: imageFile != null
              ? SizedBox()
              : Icon(
                  Icons.camera_alt_outlined,
                  color: MyColors.primaryColor,
                  size: 50,
                ),
        ),
        CupertinoButton(
          child: Text(
            "Add Profile Picture",
            style: MyTextStyle.normal.copyWith(color: MyColors.primaryColor),
          ),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
