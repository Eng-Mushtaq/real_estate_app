import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = const Color(0xff00a7ae);
  static Color primary2 = const Color(0xffF2F2F2);
  static Color greenLight = const Color(0xff1ca345);
  static Color greenDark = const Color(0xFF285336);
  static Color linearColor2 = const Color(0xffF2F2F2);

  static Color darkGrey = const Color(0xff575A5A);
  static Color grey = const Color(0xffD0D1D3);
  static Color lightGrey = const Color(0xff9E9E9E);
  static Color secondary = const Color(0xffFE5900);
  static Color black = const Color(0xff000000);
  static Color yellow = Colors.yellowAccent;

  static Color darkPrimary = const Color(0xffFFC746);
  static Color lightPrimary = const Color(0xCCd17d11); // color with 80% opacity
  static Color grey1 = const Color(0xff707070);
  static Color grey2 = const Color(0xff797979);
  static Color white = const Color(0xffFFFFFF);
  static Color error = const Color(0xffe61f34); // red color
  final Color unSelectedCardColor = Color.fromARGB(255, 255, 255, 255);
  final Color selectedCardColor = const Color(0xff1ca345);
  final Color selectedTitleColor = Colors.white;
  final Color unSelectedTitleColor = const Color.fromARGB(255, 0, 0, 0);
}
