import 'app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    elevatedButtonTheme: elevatedButtonThemeData);

final elevatedButtonThemeData = ElevatedButtonThemeData(
    style: TextButton.styleFrom(
  backgroundColor: AppColors.buttonColor,
  padding: const EdgeInsets.all(8),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
));
