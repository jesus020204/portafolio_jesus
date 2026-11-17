import 'package:flutter/material.dart';

class AppTheme {
  // Centralizamos la paleta aquí para tener un Single Source of Truth.
  // Así evitamos el hardcodeo de colores en cada pantalla (DRY).
  static const Color primaryGreen = Color(0xFF004B23);
  static const Color navyBlue = Color(0xFF001F54);
  static const Color beigeBg = Color(0xFFF5F5F0);

  // Usamos static final para que el tema se instancie una sola vez en memoria
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: beigeBg,

    // Estilo unificado para los AppBars de todo el portafolio
    appBarTheme: const AppBarTheme(
      backgroundColor: navyBlue, //
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryGreen,
      foregroundColor: Colors.white,
      elevation: 4,
    ),

    iconTheme: const IconThemeData(color: primaryGreen),
  );
}
