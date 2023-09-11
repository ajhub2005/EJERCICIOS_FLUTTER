import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListScreen(),
    );
  }
}

enum ItemType { ListItem, HeadingItem, GiftItem }

class Item {
  final ItemType type;

  Item(this.type);
}

class HeadingItem extends Item {
  final String heading;

  HeadingItem(this.heading) : super(ItemType.HeadingItem);
}

class MessageItem extends Item {
  final String category;
  final String gift;

  MessageItem(this.category, this.gift) : super(ItemType.GiftItem);
}

class MyListScreen extends StatelessWidget {
  final List<Item> items = [
    HeadingItem('Lista de regalos'),
    HeadingItem('HOGAR'),
    MessageItem('','-Vajilla'),
    MessageItem('','-Vasos'),
    MessageItem('','-Copas de Vidrio'),
    MessageItem('','-Licuadora'),
    MessageItem('','-Lavadora'),
    MessageItem('','-Colchon'),
    //AQUI SE SEPARA LA LISTA PARA DAR PASO A OTRA CATEGORIA
    HeadingItem('MODA'),
    MessageItem('','-Vestido'),
    MessageItem('','-Corbata'),
    MessageItem('','-Zapatos'),
    MessageItem('','-Bolso'),
    MessageItem('','-Traje de Baño'),
    //ESPACIO ENTRE CATEGORIAS
    HeadingItem('ACCESORIOS'),
    MessageItem('','-Aretes'),
    MessageItem('','-Reloj'),
    MessageItem('','-Gafas'),
    MessageItem('','-Collar'),
    //ESPACIO ENTRE CATEGORIAS
    HeadingItem('TECNOLOGIA'),
    MessageItem('','-Portatil'),
    MessageItem('','-iPods Audifonos'),
    //ESPACIO ENTRE CATEGORIAS
    HeadingItem('OTROS'),
    MessageItem('','-Decoracion'),
    MessageItem('','-Carro'),
    MessageItem('','-Viaje'),
  ];

  Widget _buildItemWidget(Item item) {
    if (item is HeadingItem) {
      return ListTile(
        title: Text(
          item.heading,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    } else if (item is MessageItem) {
      return ListTile(
        title: Text(item.gift),
        subtitle: Text(item.category),
      );
    }
    return SizedBox.shrink(); // Elemento desconocido, no mostrar nada
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matrimonio de Julieth'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return _buildItemWidget(item);
        },
      ),
    );
  }
}
