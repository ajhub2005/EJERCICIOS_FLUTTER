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
          child: Center(
            child: Text(items[index]),
          ),
        );
      },
    );
  }
}
