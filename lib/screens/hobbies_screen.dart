import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Hobbies')),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          _HobbyCard(
            title: 'Pádel y Deportes',
            description: 'Disfruto mucho jugar pádel. Además, el gimnasio y el running son partes fundamentales de mi rutina, tanto así que una de mis metas a futuro es certificarme como Personal Trainer.',
            imagePath: 'assets/images/padel.jpg',
          ),
          _HobbyCard(
            title: 'Cine y Películas',
            description: 'En mi tiempo libre soy un gran aficionado a ver películas y desconectarme a través del cine.',
            imagePath: 'assets/images/cine.jpg',
          ),
          _HobbyCard(
            title: 'Gastronomía',
            description: 'Soy un gran amante de la comida. Disfruto explorar nuevos platillos y vivir la experiencia gastronómica.',
            imagePath: 'assets/images/gastronomia.jpg',
          ),
        ],
      ),
    );
  }
}

// Widget reutilizable para no repetir el código de la tarjeta 3 veces
class _HobbyCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _HobbyCard({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15.0),
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ClipRRect para redondear las esquinas de la imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15.0),
            // Expanded para que el texto ocupe el resto del espacio y no dé error de overflow
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 15.0, height: 1.4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
