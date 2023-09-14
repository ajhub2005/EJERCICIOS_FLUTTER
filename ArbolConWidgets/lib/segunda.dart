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
        margin: const EdgeInsets.only(top: 300, left: 100),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: [
                // const Icon(Icons.home_outlined),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('Series'),
                  ),
                ),
                const SizedBox(height: 50),
                // Usar InkWell para hacer la imagen tappable
             
               Image.asset(
                    'imagen/clover.jpg',
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
