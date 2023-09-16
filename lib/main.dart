import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyShoppingList(),
    );
  }
}

class MyShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          Container(
            width: 20,
          ),
          Icon(Icons.shopping_cart, ),
          Container(width: 20,),

        ],
      ),
      body: ShoppingItemList(),
    );
  }
}

class ShoppingItemList extends StatelessWidget {
  List<Map<String, dynamic>> items = [
    {'name': 'Redmi', 'icon': Icons.shopping_basket},
    {'name': 'Apple', 'icon': Icons.shopping_basket},
    {'name': 'Milk', 'icon': Icons.local_dining},
    {'name': 'Sos', 'icon': Icons.local_dining},
    {'name': 'Egg', 'icon': Icons.local_dining},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (contex, index) {
        return ListTile(
          leading: Icon(items[index]['icon']),
          title: Text(items[index]['name']),
        );
      },
    );
  }
}
