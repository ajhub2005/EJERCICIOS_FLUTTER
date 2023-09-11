// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Lista y Cuadrícula en Flutter'),
//         ),
//         body: MyWidget(),
//       ),
//     );
//   }
// }

// // ignore: use_key_in_widget_constructors
// class MyWidget extends StatelessWidget {
//   final List<String> items = [
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '10',
//     '11',
//     '12',
//     '13',
//     '14',
//     '15',
//     '16',
//     '17',
//     '18',
//     '19',
//     '20',
//     '21',
//     '22',
//     '23',
//     '24',
//     '25',
//     '26',
//     '27',
//     '28',
//     '29',
//     '30',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [

//         Expanded(
//           child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 30,
//               mainAxisSpacing: 2.0,
//               crossAxisSpacing: 2.0,
   

//             ),
//             itemCount: items.length,
//             itemBuilder: (BuildContext context, int index) {
//               return GridTile(
//                 child: Card(
//                   child: Center(
//                     child: Text(items[index]),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }



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
  final List<String> items = List.generate(40, (index) => (index + 1).toString());

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
