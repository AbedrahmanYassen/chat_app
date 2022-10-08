import 'package:chat_app/presentation/resources/color_manager.dart';
import 'package:chat_app/presentation/resources/routes_manager.dart';
import 'package:chat_app/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      onGenerateRoute: RoutesManager.getRoute,
      initialRoute: Routes.friendsScreen,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),

    );
  }
}
