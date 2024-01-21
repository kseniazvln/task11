import 'package:flutter/material.dart';
import 'package:task1/entity/product.dart';

class FavoritesViewModel with ChangeNotifier {
  List<Product> _favorites = [];

  List<Product> get favorites => _favorites;

  void addToFavorites(Product product) {
    _favorites.add(product);
    notifyListeners();
  }

  void removeFromFavorites(Product product) {
    _favorites.remove(product);
    notifyListeners();
  }

  bool isProductInFavorites(Product product) {
    return _favorites.contains(product);
  }
}
