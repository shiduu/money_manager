import 'package:flutter/material.dart';
import 'package:money_manager/constants/color_constants.dart';
import 'package:money_manager/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}