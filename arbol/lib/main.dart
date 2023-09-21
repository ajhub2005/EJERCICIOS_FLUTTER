import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 300, left: 400),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'ALEJANDRO HOYOS BARRIOS-ADSO 3', // Agregamos un título
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Espacio entre el título y los iconos
            Row(
              children: [
                Column(
                  children: [
                    const Icon(Icons.access_alarm),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: const Center(
                        child: Text('ONE PIECE'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    const Icon(Icons.airplane_ticket),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                      child: const Center(
                        child: Text('AKAME'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    const Icon(Icons.beach_access),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                      child: const Center(
                        child: Text('DBZ'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
