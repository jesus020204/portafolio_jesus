import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio - Portafolio')),
      // Se utiliza ListView para estructurar un menú vertical flexible
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          const SizedBox(height: 20),
          const Text(
            '¡Hola! Soy Jesús',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.person, color: AppTheme.primaryGreen),
            title: const Text('Sobre Mí', style: TextStyle(fontSize: 18)),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'about');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.mail, color: AppTheme.primaryGreen),
            title: const Text('Contacto', style: TextStyle(fontSize: 18)),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'contact');
            },
          ),
          const Divider(),

          // Elemento del menú que conecta con la ruta de Hobbies
          ListTile(
            leading: const Icon(
              Icons.sports_tennis,
              color: AppTheme.primaryGreen,
            ),
            title: const Text('Mis Hobbies', style: TextStyle(fontSize: 18)),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
            onTap: () {
              // Se invoca la ruta registrada en el mapa global (app_routes.dart)
              Navigator.pushNamed(context, 'hobbies');
            },
          ),
          const Divider(),

          // Estructura preparada para la siguiente pantalla (Ej: Contacto o Animaciones)
          ListTile(
            leading: const Icon(Icons.animation, color: AppTheme.primaryGreen),
            title: const Text(
              'Zona Interactiva',
              style: TextStyle(fontSize: 18),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.pushNamed(context, 'animated');
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
