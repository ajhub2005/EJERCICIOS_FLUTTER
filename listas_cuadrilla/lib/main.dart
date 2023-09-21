import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cuadrícula tipo Excel en Flutter'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final List<String> items = List.generate(31, (index) => (index + 1).toString());

  MyWidget({super.key});

  // Función para asignar colores a cada cuadro de manera alternada
  Color getBoxColor(int index) {
    return index % 2 == 0 ? Color.fromARGB(255, 0, 139, 74) : Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5, // Cambiar el número de columnas según tus necesidades
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 2,
          color: getBoxColor(index), // Asignar el color aquí
          child: Center(
            child: Text(
              items[index],
              style: const TextStyle(
                color: Colors.white, // Color del texto
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
