import 'package:flutter/material.dart';
import 'package:weektasks/day1/widgets/homePage.dart';
import 'package:weektasks/day2/screens/day2HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Day1homePage(),
      home: Day2homepage(),
    );
  }
}
