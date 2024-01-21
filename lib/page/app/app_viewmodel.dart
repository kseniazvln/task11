import 'package:flutter/material.dart';
import 'app_model.dart';

class AppViewModel {
  final AppModel _appModel;

  AppViewModel(this._appModel);

  final selectedTabIndex = ValueNotifier<int>(0);
  final pageController = PageController();

  void onTabSelected(int index) {
    selectedTabIndex.value = index;
    pageController.jumpToPage(index);
  }

  void onPageNavigate() {
    // Обработка перехода на другую страницу без изменения выбранной вкладки
    // Можете добавить здесь логику для перехода на нужную страницу
  }
  void onPageChanged(int index) {
    selectedTabIndex.value = index;
  }

  void dispose() {
    pageController.dispose();
  }
}
