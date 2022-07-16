import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:google_fonts/google_fonts.dart';
class Settings {
  ///Colors

  Color colorPrimary = Color.fromARGB(255, 52, 209, 196);
  Color colorWhite = Colors.white;
  Color colorRed = Colors.red;
  Color colorBlack = Colors.black;
  Color colorsYellow = const Color(0xffFFBC0F);

  ///Themes
  Color darkUI = const Color(0xff3b8c75);
  Color normalUI = const Color(0xff64caad);
  Color lightUI = const Color(0xff73e8c9);

  ///Text styles for texts

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

  ///Statics images

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  ///Category Images

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assets/images/mobiles.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/essentials.jpeg',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/appliances.jpeg',
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.jpeg',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fashion.jpeg',
    },
  ];
}
