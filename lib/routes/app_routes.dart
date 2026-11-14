import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  // Mapa global de navegación.
  // Toda pantalla nueva (Sobre Mí, Hobbies, Contacto) debe registrarse aquí.
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
  };
}
