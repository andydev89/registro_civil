import 'package:flutter/material.dart';

const primaryColor = Color(0xff0D1D2F);
const yellow = Color(0xffFFC926);
const grey = Color(0xffCCCCCC);
const blue = Color(0xff24487A);
const ligthBlue = Color(0xff2983F4);
const green = Color(0xff5CA71B);
const gradient = LinearGradient(
  colors: [
    primaryColor,
    blue,
  ],
);
// const secondaryColor = Color(0x1f1f1f1f);

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  cardColor: const Color.fromRGBO(255, 255, 255, 0.43),
  dialogBackgroundColor: const Color.fromRGBO(255, 255, 255, 0.75),
  // colorScheme: const ColorScheme.light().copyWith(
  //   primary: primaryColor,
  //   // secondary: secondaryColor,
  // ),
  // appBarTheme: const AppBarTheme(
  //   backgroundColor: primaryColor,
  //   centerTitle: true,
  // ),
  // drawerTheme: const DrawerThemeData(
  //   elevation: 1,
  //   backgroundColor: Colors.white,
  // ),
  // scaffoldBackgroundColor: const Color.fromRGBO(
  //   246,
  //   245,
  //   255,
  //   1,
  // ),
  // cardTheme: CardTheme(
  //   margin: const EdgeInsets.symmetric(horizontal: 20),
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(30),
  //   ),
  // ),
  // popupMenuTheme: PopupMenuThemeData(
  //   color: Colors.white.withAlpha(225),
  //   textStyle: const TextStyle(
  //     color: Colors.black,
  //   ),
  // ),
  // textTheme: const TextTheme(
  //   headline6: TextStyle(
  //     color: Color.fromRGBO(
  //       152,
  //       152,
  //       153,
  //       1,
  //     ),
  //   ),
  // ),
  // scrollbarTheme: ScrollbarThemeData(
  //   radius: const Radius.circular(10),
  //   thickness: MaterialStateProperty.all(15),
  //   thumbColor: MaterialStateProperty.all(
  //     primaryColor,
  //   ),
  //   trackColor: MaterialStateProperty.all(
  //     Colors.grey.withOpacity(0.2),
  //   ),
  // ),
);
