import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle(
            // Color of the status bar background
            statusBarColor: Colors.black,
            // For Android.
            // Use [light] for white status bar and [dark] for black status bar.
            statusBarIconBrightness: Brightness.light,
            // For iOS.
            // Use [dark] for white status bar and [light] for black status bar.
            //statusBarBrightness: Brightness.dark,
          ),
        ),
        textTheme: TextTheme(
          headline6: GoogleFonts.poppins(
            fontSize: 2.h,
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 1.5.h,
          ),
        ),
      );
}
