import 'package:flutter/material.dart';
import 'primera.dart'; // Importa tus otras páginas aquí
import 'segunda.dart'; // Importa tus otras páginas aquí
import 'tercera.dart'; // Importa tus otras páginas aquí

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArbolWidget(),
    );
  }
}

class ArbolWidget extends StatefulWidget {
  const ArbolWidget({super.key});

  @override
  State<ArbolWidget> createState() => _ArbolWidgettState();
}

class _ArbolWidgettState extends State<ArbolWidget> {
  @override
 Widget _buildIconColumn(IconData icon, String text, void Function() onPressed) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.teal,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 80,
          height: 40,
          color: Colors.blue, // Cambiado a azul
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text("Ir a la vista"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 300, left: 30),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            _buildIconColumn(
              Icons.home_outlined,
              'Vista 1',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrimeraVista()),
                );
              },
            ),
            const SizedBox(width: 30),
            _buildIconColumn(
              Icons.chair,
              'Vista 2',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SegundaVista()),
                );
              },
            ),
            const SizedBox(width: 30),
            _buildIconColumn(
              Icons.payment,
              'Vista 3',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TerceraVista()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}