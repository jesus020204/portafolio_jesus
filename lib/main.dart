import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio Jesús',

      // Rutas delegadas al archivo de barril para no saturar el main
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,

      // Aplicamos el tema global centralizado
      theme: AppTheme.lightTheme,
    );
  }
}
