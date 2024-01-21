import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final double price;
  final IconData iconData; // Заменим на IconData для использования стандартных изображений Flutter

  Product({
    required this.name,
    required this.price,
    required this.iconData,
  });
}