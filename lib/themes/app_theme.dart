import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Mis colores base en hexadecimal puro (evitando el .withOpacity para no ensuciar)
  static const Color backgroundBeige = Color(0xFFF5F5DC);
  static const Color primaryGreen = Color(0xFF006A4E);
  static const Color textNavy = Color(0xFF000080);

  // Tema claro global
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryGreen,
    scaffoldBackgroundColor: backgroundBeige,

    // Centralizo la configuración de la AppBar aquí para mantener el principio KISS en el main
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

    // Aplico la fuente Outfit a todos los textos con mi color azul marino
    textTheme: GoogleFonts.outfitTextTheme().apply(
      bodyColor: textNavy,
      displayColor: textNavy,
    ),
  );
}
