import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Uso IndexedStack para que las pantallas no se reconstruyan desde cero
  // al cambiar de pestaña y no perder el estado (inputs, scroll).
  final List<Widget> _screens = [
    const Center(child: Text('Pantalla Sobre Mí (Próximamente)')),
    const Center(child: Text('Pantalla Hobbies (Próximamente)')),
    const Center(child: Text('Pantalla Contacto (Próximamente)')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jesús Ernández')),
      body: IndexedStack(index: _selectedIndex, children: _screens),
      // Contenedor extra para separar el GNav de los bordes del dispositivo
      bottomNavigationBar: Container(
        color: AppTheme.primaryGreen,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            // Invierto los colores del tema para la pestaña activa
            backgroundColor: AppTheme.primaryGreen,
            color: AppTheme.backgroundBeige,
            activeColor: AppTheme.primaryGreen,
            tabBackgroundColor: AppTheme.backgroundBeige,
            gap: 8,
            padding: const EdgeInsets.all(12),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              GButton(icon: Icons.person, text: 'Sobre Mí'),
              GButton(icon: Icons.sports_esports, text: 'Hobbies'),
              GButton(icon: Icons.mail, text: 'Contacto'),
            ],
          ),
        ),
      ),
    );
  }
}
