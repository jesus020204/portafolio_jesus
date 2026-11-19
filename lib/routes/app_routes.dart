import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'main';

  static Map<String, Widget Function(BuildContext)> routes = {
    'main': (BuildContext context) => const MainNavigationScreen(),
    'about': (BuildContext context) => const AboutScreen(),
    'hobbies': (BuildContext context) => const HobbiesScreen(),
    'contact': (BuildContext context) => const ContactScreen(),
  };
}
