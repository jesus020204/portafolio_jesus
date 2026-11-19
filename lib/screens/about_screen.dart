import 'package:flutter/material.dart';

// Pantalla de biografía que implementa widgets nativos y recursos estáticos locales
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre Mí')),
      // SingleChildScrollView permite que el contenido sea desplazable si excede el tamaño de la pantalla
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Uso de CircleAvatar para el requerimiento académico de manejo de imágenes
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/perfil.jpeg'),
            ),
            const SizedBox(height: 30),
            const Text(
              'Jesús Ernández', // Nombre implementado sin 'h' según los requerimientos
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Estudiante de Ingeniería en Sistemas',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 30),
            // Se divide la biografía en párrafos utilizando Text widgets independientes para mejor legibilidad
            const Text(
              'Nací el 2 de febrero de 2004 en Valle de la Pascua, estado Guárico, y a los 2 años me mudé a la Isla de Margarita. En 2017, a mis 13 años, emigré a Argentina debido a la situación económica de Venezuela, donde completé mis estudios secundarios. En 2024 tomé la decisión de regresar solo a mi país, dejando a mi familia en Argentina para vivir con mis abuelos en Margarita, motivado por el deseo de volver a mis raíces.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 15),
            const Text(
              'Actualmente curso el séptimo trimestre de Ingeniería en Sistemas en la Universidad de Margarita (UNIMAR). Aunque inicialmente consideré carreras como Economía o Medicina, encontré mi camino en la ingeniería. Además de la tecnología, tengo un gran interés personal en aprender oficios prácticos en el futuro, como carpintería, plomería y electricidad.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
