import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, String>> cartItems = [
    {'name': 'Laptop', 'price': '15.000₺'},
    {'name': 'Telefon', 'price': '8.000₺'},
  ];

  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double totalPrice = cartItems.fold(0, (sum, item) {
      return sum + double.parse(item['price']!.replaceAll('₺', '').replaceAll('.', ''));
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Sepetim')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text(item['name']!),
                  subtitle: Text(item['price']!),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // Ürün silme işlemi
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Toplam Tutar: ${totalPrice.toStringAsFixed(2)}₺',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  child: const Text('Siparişi Tamamla'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
