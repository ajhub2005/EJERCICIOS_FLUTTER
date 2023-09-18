import 'package:flutter/material.dart';
import 'segunda.dart';

class PrimeraVista extends StatefulWidget {
  const PrimeraVista({Key? key}) : super(key: key);

  @override
  State<PrimeraVista> createState() => _PrimeraVistaState();
}

class _PrimeraVistaState extends State<PrimeraVista> {
  // Función para navegar a otra vista
  void _navigateToNextPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            const SegundaVista(), // Reemplaza TerceraPage con el nombre de tu siguiente vista
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primera"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 120, left: 400),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              children: [
                const Icon(Icons.home_outlined),
                Container(
                  width: 100,
                  height: 50,
                  color: const Color.fromARGB(255, 1, 83, 149),
                  child: const Center(
                    child: Text(
                      'Peliculas',
                      style: TextStyle(
                        color:
                            Colors.white, // Cambia el color del texto a blanco
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                // Usar InkWell para hacer la imagen tappable
                InkWell(
                  onTap: () {
                    // Llama a la función de navegación al tocar la imagen
                    _navigateToNextPage();
                  },
                  child: Image.asset(
                    'assets/laMonja2.png',
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
