import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'about_screen.dart';
import 'hobbies_screen.dart';
import 'contact_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  // Variable para saber qué pestaña está seleccionada actualmente
  int _selectedIndex = 0;

  // Lista con las 3 pantallas a las que podemos navegar
  final List<Widget> _views = const [
    AboutScreen(),
    HobbiesScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack sirve para que las pantallas no se recarguen desde cero al cambiar de pestaña
      body: IndexedStack(index: _selectedIndex, children: _views),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.indigo,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.indigo.withValues(alpha: 0.1),
            color: Colors.black54,
            tabs: const [
              GButton(icon: Icons.person, text: 'Sobre Mí'),
              GButton(icon: Icons.favorite, text: 'Hobbies'),
              GButton(icon: Icons.mail, text: 'Contacto'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index; // Actualiza la pantalla al hacer clic
              });
            },
          ),
        ),
      ),
    );
  }
}
