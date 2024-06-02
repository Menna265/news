import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MyThemeData {
  static Color primaryColor = Color(0xFF39A552);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color blackColor = Color(0xFF242424);
  static Color darkColor = Color(0xFF060E1E);
  static Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(

    primaryColor: Color(0xFF39A552),
      scaffoldBackgroundColor: whiteColor,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.almarai(
            fontSize: 15, fontWeight: FontWeight.w400, color: blackColor),
        bodyMedium: GoogleFonts.almarai(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: darkColor,
        ),
        bodyLarge: GoogleFonts.almarai(
            fontSize: 25, fontWeight: FontWeight.bold, color: whiteColor),
      ),
      appBarTheme: AppBarTheme(

          color: primaryColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)))));
}
