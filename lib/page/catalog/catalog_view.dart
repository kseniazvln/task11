import 'package:flutter/material.dart';
import 'package:task1/entity/product.dart';




class CatalogView extends StatelessWidget {
  final List<Product> products;

  CatalogView({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Каталог товаров'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(product.name),
        subtitle: Text('Цена: ${product.price}'),
      ),
    );
  }
}

