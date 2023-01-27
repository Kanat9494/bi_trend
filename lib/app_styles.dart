import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color cBrown = Color(0xff292526);
const Color cDarkBrown = Color(0xff1b2028);

const Color cGrey = Color(0xffa4aaad);
const Color cDarkGrey = Color(0xff878787);
const Color cLightGrey = Color(0xffededed);

const Color cWhite = Color(0xffffffff);
const Color cBlack = Color(0xff111111);

const Color cYellow = Color(0xffffd33c);
const double cBorderRadius = 12.0;
const double cPaddingHorizontal = 24.0;

final cInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(cBorderRadius),
  borderSide: const BorderSide(
    color: cLightGrey,
  )
);

final cEncodeSansBold = GoogleFonts.encodeSans(fontWeight: FontWeight.w700);

final cEncodeSansSemibold = GoogleFonts.encodeSans(fontWeight: FontWeight.w600);

final cEncodeSansMedium = GoogleFonts.encodeSans(fontWeight: FontWeight.w500);

final cEncodeSansRegular = GoogleFonts.encodeSans(fontWeight: FontWeight.w400);

