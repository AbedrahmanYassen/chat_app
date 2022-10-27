import 'package:chat_app/providers/chat_screen_provider.dart';
import 'package:chat_app/routes_manager.dart';
import 'package:chat_app/app/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_)=> ChatScreenProvider()) ,
          ],
          child: MaterialApp(
            onGenerateRoute: RoutesManager.getRoute,
            initialRoute: Routes.verfiyCode,
            debugShowCheckedModeBanner: false,
            theme: getApplicationTheme(),
          ),
        );
      },
    );
  }
}

