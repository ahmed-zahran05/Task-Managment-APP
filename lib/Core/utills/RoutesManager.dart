import 'package:flutter/material.dart';
import 'package:taskmanagmentgit/Presentition/Authentaction/Login/LoginScreen.dart';
import 'package:taskmanagmentgit/Presentition/Authentaction/Register/RegisterScreen.dart';

import '../../Presentition/Screens/Home/HomeScreen.dart';


class RoutesManager {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String register = '/register';
  static const String login = '/login';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case register:
        return MaterialPageRoute(
          builder: (context) => const Register(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );
    }
  }
}
