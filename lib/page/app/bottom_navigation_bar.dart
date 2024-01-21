import 'package:flutter/material.dart';
import 'package:task1/page/app/app_viewmodel.dart';


class BottomNavigationBarWidget extends StatelessWidget {
  final AppViewModel viewModel;

  BottomNavigationBarWidget({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: viewModel.selectedTabIndex,
      builder: (context, selectedIndex, _) {
        return BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: viewModel.onTabSelected,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: 'Витрина',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image_search_outlined),
              label: 'Каталог',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined),
              label: 'Корзина',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Избранное',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Профиль',
            ),
          ],
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.black87,
          selectedLabelStyle:  TextStyle(color: Colors.black87), // Цвет текста активной иконки
          unselectedLabelStyle: TextStyle(color: Colors.black), // Цвет текста неактивной иконки
        );
      },
    );
  }
}

