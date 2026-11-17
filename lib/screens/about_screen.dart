import 'package:flutter/material.dart';

// Importación del tema global para centralizar el diseño, siguiendo los principios de Clean Code.
import '../themes/app_theme.dart';

// Utilizamos StatelessWidget ya que la información del perfil es estática y no requiere redibujarse.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre Mí')),
      // Se prefiere ListView sobre Column para garantizar responsividad al manejar textos extensos y evitar desbordamientos.
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        // Se encapsulan los widgets en const para optimizar la memoria, evitando reconstrucciones innecesarias del árbol.
        children: const [
          // CircleAvatar mantiene uniformidad. Usa el verde desde el AppTheme.
          CircleAvatar(
            maxRadius: 60,
            backgroundColor: AppTheme.primaryGreen,
            child: Icon(Icons.person, size: 60, color: Colors.white),
          ),
          SizedBox(height: 20),

          Text(
            'Jesús Ernández',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            'Estudiante de Ing. en Sistemas - Unimar (7mo Trimestre)',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),

          Text(
            'Mi Historia',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Nací en Valle de la Pascua (Guárico) y a los 2 años me mudé a la Isla de Margarita. En 2017, con 13 años, emigré a Argentina debido a la situación económica, donde culminé mis estudios secundarios. En 2024, motivado por el fuerte deseo de volver a mi país, decidí regresar por mi cuenta a Margarita para vivir con mis abuelos.',
            style: TextStyle(fontSize: 16, height: 1.5),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 25),

          Text(
            'Academia y Pasiones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Aunque inicialmente consideré estudiar Economía o Medicina, me decanté por la Ingeniería en Sistemas. Dentro de este mundo, descubrí que mi mayor interés es el Análisis de Datos. Fuera de lo académico, aspiro a aprender oficios prácticos (carpintería, plomería, electricidad) y certificarme como personal trainer, combinando mi gusto por el gimnasio y el running.',
            style: TextStyle(fontSize: 16, height: 1.5),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 30),

          Text(
            'Áreas de Interés',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),

          // Se implementa Wrap en lugar de Row para que los Chips salten de línea automáticamente sin romper la pantalla.
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Chip(
                label: Text('Análisis de Datos'),
                avatar: Icon(Icons.analytics, size: 18),
              ),
              Chip(
                label: Text('Flutter & Dart'),
                avatar: Icon(Icons.phone_android, size: 18),
              ),
              Chip(
                label: Text('Lógica de Sistemas'),
                avatar: Icon(Icons.computer, size: 18),
              ),
              Chip(
                label: Text('Fitness & Running'),
                avatar: Icon(Icons.fitness_center, size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
