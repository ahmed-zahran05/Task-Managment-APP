import 'package:flutter/material.dart';

import '../../Core/utills/AppStyles.dart';
import '../../Core/utills/ColorsManager.dart';

class myTheme {
  static ThemeData light = ThemeData(
    useMaterial3: false,
    primaryColor: colorsManager.bluecolor,
    appBarTheme: AppBarTheme(
      backgroundColor: colorsManager.bluecolor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: lightAppStyles.lightAppBarTextStyle,
    ),
    scaffoldBackgroundColor: colorsManager.lightScaffoldBgColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      selectedItemColor: colorsManager.bluecolor,
      unselectedItemColor: colorsManager.greycolor,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
      backgroundColor: colorsManager.bluecolor,
      elevation: 5,
      iconSize: 20,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: colorsManager.Whitecolor,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    dividerColor: colorsManager.bluecolor,
    cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.transparent,
        elevation: 0),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
    ),
  );
  static ThemeData dark = ThemeData(
    useMaterial3: false,
    primaryColor: colorsManager.bluecolor,
    appBarTheme: AppBarTheme(
      backgroundColor: colorsManager.bluecolor,
      elevation: 3,
      centerTitle: true,
      titleTextStyle: lightAppStyles.lightAppBarTextStyle,
    ),
    scaffoldBackgroundColor: colorsManager.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      selectedItemColor: colorsManager.bluecolor,
      unselectedItemColor: colorsManager.greycolor,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
      backgroundColor: colorsManager.blackAccent,
      elevation: 12,
      iconSize: 20,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: colorsManager.blackAccent,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    dividerColor: colorsManager.bluecolor,
    cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: colorsManager.blackAccent,
        elevation: 20),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor:   colorsManager.blackAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
      ),
    ),
  );
}
