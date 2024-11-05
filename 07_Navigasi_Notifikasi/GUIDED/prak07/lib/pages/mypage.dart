import 'package:flutter/material.dart';
import 'package:prak07/models/product.dart';
import 'package:prak07/pages/detailpage.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = [
    Product(
      id: 1,
      nama: 'mos geming',
      harga: 300000.00,
      gambarUrl: 'https://media.dinomarket.com/docs/imgTD/2018-11/pic_logitech_G502_1_031118171109_ll.jpg.jpg',
      deskripsi: 'mos geming coiii',
      ),
    Product(
      id: 2,
      nama: 'kibort geming',
      harga: 500000.00,
      gambarUrl: 'https://img.lazcdn.com/g/p/188e8d84b8de333e0a36bcaf0885b29c.jpg_720x720q80.jpg',
      deskripsi: 'kibort geming coiii',
      ),
    Product(
      id: 3,
      nama: 'hengset geming',
      harga: 450000.00,
      gambarUrl: 'https://doran.id/wp-content/uploads/2023/03/Logitech-G431-Headset-Gaming.jpg',
      deskripsi: 'hengset geming coiii',
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Model'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(
              product.gambarUrl,
              width: 70,
              height: 70
              ),
            title: Text(product.nama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rp${product.harga}'),
                Text('Deskripsi : ${product.deskripsi}'),
              ],
            ),
            onTap: () {
              print('Tap Layar berhasil');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailPage(
                  data: Icon(Icons.notifications_outlined),
                  ),
                ),
              );
            },
          );
        }
      )
    );
  }
}