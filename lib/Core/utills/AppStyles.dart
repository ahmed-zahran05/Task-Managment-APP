import 'package:flutter/material.dart';
import 'ColorsManager.dart';

class lightAppStyles {
  static TextStyle? lightAppBarTextStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: colorsManager.Whitecolor,
  );
  static TextStyle? lightbottomSheetTitleStyle = const TextStyle(
    fontSize: 18 , fontWeight: FontWeight.w700 , color:  Colors.black,);
  static TextStyle? lightgreyText = const TextStyle(
      fontSize:14 , color: Color(0xFFA9A9A9)
  );
  static TextStyle? lightdropDownItems = const TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

}
class darkAppStyles {
  static TextStyle? darkAppBarTextStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: colorsManager.black,
  );
  static TextStyle? darkbottomSheetTitleStyle = const TextStyle(
    fontSize: 18 , fontWeight: FontWeight.w700 , color:  Colors.white,);
  static TextStyle? darkWhitetext = const TextStyle(
      fontSize:14 , color: Color(0xFFFFFFFF)
  );
  static TextStyle? darkdropDownItems = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
class CommonAppStyles{
  static TextStyle? ItemView = const TextStyle(
    color: Colors.blue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static TextStyle? SettingItemTextStyle =  const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle? TaskTitleText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: colorsManager.bluecolor,
  );
}
