import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/util/color.dart';

class MyTextStyle {
  static final TextStyle _base = GoogleFonts.nunitoSans().copyWith(
    fontSize: 16,
    color: MyColors.dark,
  );

  static TextStyle bold = _base.copyWith(fontWeight: FontWeight.w700);
  static TextStyle normal = _base.copyWith(fontWeight: FontWeight.w600);
  static TextStyle regular = _base.copyWith(fontWeight: FontWeight.w400);
}
