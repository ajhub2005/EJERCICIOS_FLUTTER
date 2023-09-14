import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Arbol(),
    );
  }
}

class Arbol extends StatelessWidget {
  const Arbol({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100, left: 50),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
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
                  child: const Center(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 80,
                  height: 40,
                  color: Colors.purple,
                  child: const Center(
                    child: Text(
                      'Primera Vista',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.orange,
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
                  child: const Center(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 80,
                  height: 40,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Segunda Vista',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
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
                  child: const Center(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 80,
                  height: 40,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Tercera vista',
                      style: TextStyle(color: Colors.white),
                    ),
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
