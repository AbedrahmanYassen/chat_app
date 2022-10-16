import 'package:flutter/material.dart';

import 'screens/chat/chat_screen.dart';
import 'screens/friends_screen/friends_screen.dart';


class Routes {
  static const String friendsScreen = '/';
  static const String chatScreen = 'chat_screen';
  static const String loginScreen = 'login';
  static const String signUpScreen = 'signup';
}

class RoutesManager {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.friendsScreen:
        return MaterialPageRoute(builder: (_) => const FriendsScreen());
      case Routes.chatScreen :
        return MaterialPageRoute(builder: (_) => const ChatScreen()) ;
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
