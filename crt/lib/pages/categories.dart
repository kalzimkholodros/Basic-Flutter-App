import 'package:flutter/material.dart';
import 'products.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['Elektronik', 'Moda', 'Ev & Yaşam', 'Kitaplar'];

    return Scaffold(
      appBar: AppBar(title: const Text('Kategoriler')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductsPage(category: categories[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
