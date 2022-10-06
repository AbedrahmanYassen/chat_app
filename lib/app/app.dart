import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance ;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Placeholder(),
    );
  }
}
