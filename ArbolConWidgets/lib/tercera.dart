import 'package:flutter/material.dart';


class TerceraVista extends StatelessWidget {
  const TerceraVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 300, left: 100),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: [
                const Icon(Icons.payment),
                const SizedBox(height:30),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Documentales'),
                  ),
                ),
                const SizedBox(height: 50),
                // Usar InkWell para hacer la imagen tappable
             
            Image.asset(
                    'imagen/dragon.webp',
                    width: 300,
                    height: 300,
                  ),
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}
