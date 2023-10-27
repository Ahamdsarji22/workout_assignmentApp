import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.inter(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          bodyMedium: GoogleFonts.inter(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
          bodySmall: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          titleLarge: GoogleFonts.sansita(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFF027A48),
      ));
}
