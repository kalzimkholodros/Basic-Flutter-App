import 'package:flutter/material.dart';
import 'profile.dart';
import 'order_history.dart';
import 'categories.dart';  // CategoriesPage sayfasını ekliyoruz
import 'cart.dart';          // Sepet sayfası için gerekli kütüphane
import 'checkout.dart';      // Ödeme sayfası için gerekli kütüphane

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Sipariş Sitesi'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigasyon Menüsü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading:  Icon(Icons.category),
              title:  Text('Kategoriler'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  CategoriesPage()));
              },
            ),
            ListTile(
              leading:  Icon(Icons.person),
              title:  Text('Profil'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  ProfilePage()));
              },
            ),
            ListTile(
              leading:  Icon(Icons.history),
              title:  Text('Sipariş Geçmişi'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  OrderHistoryPage()));
              },
            ),
            ListTile(
              leading:  Icon(Icons.payment),
              title:  Text('Ödeme'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  CheckoutPage()));
              },
            ),
            ListTile(
              leading:  Icon(Icons.exit_to_app),
              title:  Text('Çıkış'),
              onTap: () {
                Navigator.pop(context);  // Çıkış yapıldığında sadece Drawer'ı kapat
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding:  EdgeInsets.all(8.0),
        children: [
          _buildCard(context, 'Kategoriler', Icons.category,  CategoriesPage()),
          _buildCard(context, 'Profil', Icons.person,  ProfilePage()),
          _buildCard(context, 'Sipariş Geçmişi', Icons.history,  OrderHistoryPage()),
          _buildCard(context, 'Sepet', Icons.shopping_cart,  CartPage()),
          _buildCard(context, 'Ödeme', Icons.payment,  CheckoutPage()),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, IconData icon, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Card(
        margin:  EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0),
             SizedBox(height: 8.0),
            Text(title, style:  TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
