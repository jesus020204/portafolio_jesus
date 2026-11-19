import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Paleta de colores principal
  static const Color backgroundBeige = Color(0xFFF5F5DC);
  static const Color primaryGreen = Color(0xFF006A4E);
  static const Color textNavy = Color(0xFF000080);

  // Tema claro global
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryGreen,
    scaffoldBackgroundColor: backgroundBeige,

    // Estilos por defecto para el AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryGreen,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: backgroundBeige),
      titleTextStyle: TextStyle(
        color: backgroundBeige,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),

    // Tipografía general de la app
    textTheme: GoogleFonts.outfitTextTheme().apply(
      bodyColor: textNavy,
      displayColor: textNavy,
    ),
  );
}
