import 'package:flutter/material.dart';
import 'package:task1/entity/card.dart';
import 'package:task1/page/catalog/catalog_viewmodel.dart';


class CatalogView extends StatelessWidget {
  final CatalogViewModel viewModel = CatalogViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: ListView.builder(
        itemCount: (viewModel.products.length / 2).ceil(),
        itemBuilder: (context, index) {
          var startIndex = index * 2;
          var endIndex = startIndex + 1;
          // Проверяем, чтобы не выходить за пределы списка продуктов
          if (endIndex >= viewModel.products.length) {
            endIndex = viewModel.products.length - 1;
          }

          return Row(
            children: [
              ProductCard(product: viewModel.products[startIndex]),
              SizedBox(width: 8.0),
              ProductCard(product: viewModel.products[endIndex]),
            ],
          );
        },
      ),
    );
  }
}
