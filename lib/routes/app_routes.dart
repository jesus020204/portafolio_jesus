import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  // Mapa global de navegación.
  // Toda pantalla nueva (Sobre Mí, Hobbies, Contacto) debe registrarse aquí.
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'hobbies': (BuildContext context) => const HobbiesScreen(),
    'animated': (BuildContext context) => const AnimatedScreen(),
    'about': (BuildContext context) => const AboutScreen(),
    'contact': (BuildContext context) => const ContactScreen(),
  };
}
