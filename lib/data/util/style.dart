import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  static final TextStyle _base =
      GoogleFonts.nunitoSans().copyWith(fontSize: 16);

  static TextStyle bold = _base.copyWith(fontWeight: FontWeight.w700);
  static TextStyle normal = _base.copyWith(fontWeight: FontWeight.w600);
  static TextStyle regular = _base.copyWith(fontWeight: FontWeight.w400);
}
