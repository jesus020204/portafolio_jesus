import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'themes/app_theme.dart';

void main() => runApp(const MiPortafolio());

class MiPortafolio extends StatelessWidget {
  const MiPortafolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio Jesús',
      // Aplico los colores y tipografías de app_theme
      theme: AppTheme.lightTheme,
      // Llamo a las rutas de las pantallas
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
