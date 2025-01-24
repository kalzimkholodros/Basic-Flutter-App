  import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {'date': '01/01/2025', 'total': '23.000₺'},
      {'date': '25/12/2024', 'total': '8.000₺'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Sipariş Geçmişi')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text('Sipariş Tarihi: ${order['date']}'),
            subtitle: Text('Toplam: ${order['total']}'),
          );
        },
      ),
    );
  }
}
