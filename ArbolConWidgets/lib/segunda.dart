import 'package:flutter/material.dart';


class SegundaVista extends StatelessWidget {
  const SegundaVista({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Segunda"),
        )
      ,

    body: Container(
        margin: const EdgeInsets.only(top: 120, left: 400),
        padding: const EdgeInsets.all(15.0),
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
                      'Series',
                      style: TextStyle(
                        color:
                            Colors.white, // Cambia el color del texto a blanco
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                // Usar InkWell para hacer la imagen tappable
             
               Image.asset(
                    'assets/American_Horror_Story_Asylum.svg.png.',
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
