import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ödeme Yöntemi')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Kredi Kartı'),
            onTap: () {
              // Kredi kartı seçimi
            },
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text('Kapıda Ödeme'),
            onTap: () {
              // Kapıda ödeme seçimi
            },
          ),
        ],
      ),
    );
  }
}
