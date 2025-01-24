import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/products.dart';
import 'pages/cart.dart';
import 'pages/checkout.dart';
import 'pages/profile.dart';
import 'pages/address.dart';
import 'pages/payment.dart';
import 'pages/order_history.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sipariş Uygulaması',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) =>  HomePage(),
        '/products': (context) =>  ProductsPage(category: 'Elektronik'),
        '/cart': (context) => CartPage(),
        '/checkout': (context) =>  CheckoutPage(),
        '/profile': (context) =>  ProfilePage(),
        '/address': (context) =>  AddressPage(),
        '/payment': (context) =>  PaymentPage(),
        '/order_history': (context) =>  OrderHistoryPage(),
      },
    );
  }
}
