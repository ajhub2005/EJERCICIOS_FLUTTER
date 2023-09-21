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

class CategoryItem extends Item {
  final String category;
  final List<MessageItem> gifts;

  CategoryItem(this.category, this.gifts) : super(ItemType.HeadingItem);
}

class MyListScreen extends StatelessWidget {
  final List<Item> items = [
    ExpansionItem('Lista de regalos', [
      CategoryItem('HOGAR', [
        MessageItem('HOGAR', '-Vajilla'),
        MessageItem('HOGAR', '-Vasos'),
        MessageItem('HOGAR', '-Copas de Vidrio'),
        MessageItem('HOGAR', '-Licuadora'),
        MessageItem('HOGAR', '-Lavadora'),
        MessageItem('HOGAR', '-Colchon'),
      ]),
      CategoryItem('MODA', [
        MessageItem('MODA', '-Vestido'),
        MessageItem('MODA', '-Corbata'),
        MessageItem('MODA', '-Zapatos'),
        MessageItem('MODA', '-Bolso'),
        MessageItem('MODA', '-Traje de Baño'),
      ]),
      CategoryItem('ACCESORIOS', [
        MessageItem('ACCESORIOS', '-Aretes'),
        MessageItem('ACCESORIOS', '-Reloj'),
        MessageItem('ACCESORIOS', '-Gafas'),
        MessageItem('ACCESORIOS', '-Collar'),
      ]),
      CategoryItem('TECNOLOGIA', [
        MessageItem('TECNOLOGIA', '-Portatil'),
        MessageItem('TECNOLOGIA', '-iPods Audifonos'),
      ]),
      CategoryItem('OTROS', [
        MessageItem('OTROS', '-Decoracion'),
        MessageItem('OTROS', '-Carro'),
        MessageItem('OTROS', '-Viaje'),
      ]),
    ]),
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
    } else if (item is CategoryItem) {
      return ExpansionTile(
        initiallyExpanded: true,
        trailing: Icon(Icons.keyboard_arrow_up),
        title: Text(
          item.category,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: item.gifts.map((gift) {
          return ListTile(
            title: Text(gift.gift),
            subtitle: Text(gift.category),
          );
        }).toList(),
      );
    } else if (item is ExpansionItem) {
      return ExpansionTile(
        initiallyExpanded: true,
        trailing: Icon(Icons.keyboard_arrow_up),
        title: Text(
          item.title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        children: item.categories.map((category) {
          return _buildItemWidget(category);
        }).toList(),
      );
    }
    return SizedBox.shrink();
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

class ExpansionItem extends Item {
  final String title;
  final List<CategoryItem> categories;

  ExpansionItem(this.title, this.categories) : super(ItemType.HeadingItem);
}
