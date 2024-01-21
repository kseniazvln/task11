import 'package:flutter/material.dart';
import 'package:task1/page/app/app_model.dart';
import 'package:task1/page/app/bottom_navigation_bar.dart';
import 'package:task1/page/catalog/catalog_model.dart';
import 'package:task1/page/catalog/catalog_view.dart';
import 'package:task1/page/catalog/catalog_viewmodel.dart';
import 'package:task1/page/page1.dart';
import 'package:task1/page/page2.dart';
import 'package:task1/page/page3.dart';
import 'package:task1/page/page4.dart';
import 'package:task1/page/page5.dart';
import 'app_viewmodel.dart';
import 'package:task1/page/catalog/catalog_viewmodel.dart';



class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late AppViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = AppViewModel(AppModel());
    _viewModel.selectedTabIndex.addListener(() {
      _viewModel.pageController.jumpToPage(_viewModel.selectedTabIndex.value);
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('model'),
        ),
        body: PageView(
          controller: _viewModel.pageController,
          onPageChanged: _viewModel.onPageChanged,
          children: [
            Page2(),
            CatalogView(),
            Page3(),
            Page4(),
            Page5(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBarWidget(
          viewModel: _viewModel,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
