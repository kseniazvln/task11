import 'package:flutter/material.dart';
import 'package:task1/entity/product.dart';

class CatalogViewModel {
  List<Product> products = [
    Product(
      name: 'Product 1',
      price: 19.99,
      iconData: Icons.star,
    ),
    Product(
      name: 'Product 2',
      price: 29.99,
      iconData: Icons.favorite,
    ),
    // Добавьте больше продуктов по мере необходимости
  ];
}