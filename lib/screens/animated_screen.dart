import 'dart:math';

import 'package:flutter/material.dart';

// Debe ser StatefulWidget porque los valores de tamaño y color van a cambiar constantemente en pantalla.
class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  // Variables de estado iniciales para el contenedor
  double _width = 100;
  double _height = 100;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  // Método que reconstruye el widget con nuevos valores aleatorios
  void _changeShape() {
    final random = Random();

    // setState notifica a Flutter que debe volver a dibujar la pantalla con los nuevos datos.
    setState(() {
      _width = random.nextInt(200).toDouble() + 70;
      _height = random.nextInt(200).toDouble() + 70;
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      _borderRadius = BorderRadius.circular(
        random.nextInt(100).toDouble() + 10,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zona Interactiva')),
      body: Center(
        // AnimatedContainer anima automáticamente los cambios de estado sin necesidad de controladores complejos.
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeShape,
        child: const Icon(Icons.play_circle_filled, size: 35),
      ),
    );
  }
}
