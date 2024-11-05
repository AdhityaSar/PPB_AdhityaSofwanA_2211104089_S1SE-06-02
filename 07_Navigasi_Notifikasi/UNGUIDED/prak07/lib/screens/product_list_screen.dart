import 'package:flutter/material.dart';
import '../data_product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Kami'),
      ),
      body: ListView.builder(
        itemCount: dataProducts.length,
        itemBuilder: (ctx, index) {
          final product = dataProducts[index];
          return ListTile(
            leading: Image.network(
              product.imageUrl,
              width: 70,
              height: 70
              ),
            title: Text(product.name),
            subtitle: Text('Rp${product.price.toStringAsFixed(0)}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}