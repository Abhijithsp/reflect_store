import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:google_fonts/google_fonts.dart';
class Settings {
  Color colorPrimary = Color.fromARGB(255, 52, 209, 196);
  Color colorWhite = Colors.white;
  Color colorRed = Colors.red;
  Color colorBlack = Colors.black;
  Color colorsYellow = const Color(0xffFFBC0F);

  Color darkUI = const Color(0xff3b8c75);
  Color normalUI = const Color(0xff64caad);
  Color lightUI = const Color(0xff73e8c9);

  TextStyle smallText = GoogleFonts.ptSans(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  TextStyle normalText = GoogleFonts.ptSansCaption(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  TextStyle mediumText = GoogleFonts.ptSans(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle largeText = GoogleFonts.ptSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  TextStyle extraLargeText = GoogleFonts.ptSans(
    fontSize: 35,
    fontWeight: FontWeight.bold,
  );

  TextStyle xxLargeText = GoogleFonts.ptSans(
    fontSize: 45,
  );
}
