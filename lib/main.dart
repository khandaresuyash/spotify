import 'package:flutter/material.dart';
import 'package:spotify/presentation/colors.dart';
import 'package:spotify/presentation/home/page.dart';

main() async {
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: "Satoshi",
        scaffoldBackgroundColor: ThemeColors.bgPrimary,
        textTheme: TextTheme(
            bodyMedium: TextStyle(
          color: ThemeColors.fontPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ))),
    home: HomePage(),
  ));
}
