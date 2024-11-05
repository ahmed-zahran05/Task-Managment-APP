import 'package:flutter/material.dart';

import '../Config/Theme/My_Theme.dart';
import '../Core/utills/RoutesManager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.Router,
      initialRoute: RoutesManager.homeScreenroute,
      theme: myTheme.light,
      darkTheme: myTheme.dark,
      themeMode: ThemeMode.light,
    );
  }
}
