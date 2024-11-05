import 'package:flutter/material.dart';

import '../../Presentition/Authentaction/Login/LoginScreen.dart';
import '../../Presentition/Authentaction/Register/RegisterScreen.dart';
import '../../Presentition/Screens/Home/HomeScreen.dart';

class RoutesManager {
  static const String homeScreenroute = "/homeScreen";
  static const String registerScreenroute = "/registerScreen";
  static const String LoginScreenroute = "/loginScreen";

  static Route<dynamic>? Router(RouteSettings settings) {
    switch (settings.name) {
      case homeScreenroute:
        {
          return MaterialPageRoute(
            builder: (context) => HomeScreen(),
          );
        }
      case registerScreenroute:
        {
          return MaterialPageRoute(
            builder: (context) => RegisterScreen(),
          );
        }
      case LoginScreenroute:
        {
          return MaterialPageRoute(
            builder: (context) => Loginscreen(),
          );
        }
    }
  }
}

//{Route<dynamic>? Function(RouteSettings)? onGenerateRoute}
