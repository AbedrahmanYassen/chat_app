import 'package:chat_app/repository/messages_repo.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/verifiy_code.dart';
import 'package:chat_app/webservices/messages_api.dart';
import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';
import 'screens/friends_screen.dart';

class Routes {
  static const String friendsScreen = '/';
  static const String chatScreen = 'chat_screen';
  static const String loginScreen = 'login';
  static const String verfiyCode = 'verify_code';
}

class RoutesManager {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.friendsScreen:
        return MaterialPageRoute(builder: (_) => const FriendsScreen());
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => ChatScreen(messagesRequest: MessagesRequest()),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) {
          return const LoginScreen();
        });
      case Routes.verfiyCode:
        return MaterialPageRoute(builder: (_) {
          return VerifyCode();
        });
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text("undefined screen"),
        ),
      ),
    );
  }
}
