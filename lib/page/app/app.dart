import 'package:flutter/material.dart';
import 'app_view.dart';
import 'app_viewmodel.dart';
import 'app_model.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppView(),
    );
  }
}