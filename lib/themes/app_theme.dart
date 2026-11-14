import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colores base del portafolio. Mantengo los hexadecimales puros
  // para asegurar que el contraste no varíe accidentalmente en otras pantallas.
  static const Color backgroundBeige = Color(0xFFF5F5DC);
  static const Color primaryGreen = Color(0xFF006A4E);
  static const Color textNavy = Color(0xFF000080);

  // Tema claro global
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryGreen,
    scaffoldBackgroundColor: backgroundBeige,

    // Configuración global del AppBar para evitar repetir este mismo
    // bloque de diseño en cada vista nueva que agreguemos.
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

    // Asigno Outfit como tipografía principal y fuerzo el color textNavy
    // en los textos para mantener la consistencia en toda la app.
    textTheme: GoogleFonts.outfitTextTheme().apply(
      bodyColor: textNavy,
      displayColor: textNavy,
    ),
  );
}
