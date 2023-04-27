import 'package:book_explore_and_sale_app/res/colors.dart';
import 'package:book_explore_and_sale_app/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorProject.titleBlue),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorProject.titleOrange),
        titleSmall: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: ColorProject.titleBlue),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: ColorProject.titleGrey),
        bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: ColorProject.titleBlue),
      )),
      home: MainScreen(),
    );
  }
}
