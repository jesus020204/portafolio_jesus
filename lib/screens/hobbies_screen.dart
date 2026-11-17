import 'package:flutter/material.dart';

// Importación del tema global para mantener la consistencia visual.
import '../themes/app_theme.dart';

// Se utiliza StatelessWidget ya que el contenido es netamente informativo y no cambiará en tiempo de ejecución.
class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Se opta por ListView en lugar de Column para asegurar que la vista tenga scroll si se agregan más items a futuro.
    return ListView(
      padding: const EdgeInsets.all(20.0),
      // Declarar los 'children' como const optimiza el rendimiento al evitar reconstrucciones innecesarias.
      children: const [
        Text(
          'Lo que hago en mi tiempo libre',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25),

        _HobbyCard(
          icon: Icons.sports_tennis,
          title: 'Pádel',
          description: 'Me encanta jugar al pádel para mantenerme activo, competir un rato y despejar la mente.',
        ),
        SizedBox(height: 15),

        _HobbyCard(
          icon: Icons.fitness_center,
          title: 'Gimnasio y Running',
          description: 'El entrenamiento físico es clave en mi rutina diaria. En el futuro me gustaría ser personal trainer.',
        ),
        SizedBox(height: 15),

        _HobbyCard(
          icon: Icons.restaurant,
          title: 'Gastronomía',
          description: 'Soy un gran amante de la buena comida, siempre dispuesto a probar platos y lugares nuevos.',
        ),
        SizedBox(height: 15),

        _HobbyCard(
          icon: Icons.movie,
          title: 'Cine y Películas',
          description: 'Disfrutar de una buena película es uno de mis planes favoritos para relajarme.',
        ),
      ],
    );
  }
}

// Se extrae la tarjeta como una clase independiente y privada (_) para evitar anidar código y modularizar la vista.
class _HobbyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _HobbyCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      // ListTile se encarga de la estructura interna, estructurando el icono a la izquierda y los textos correctamente alineados.
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        leading: Icon(icon, color: AppTheme.primaryGreen, size: 32),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(description, style: const TextStyle(height: 1.3)),
      ),
    );
  }
}
