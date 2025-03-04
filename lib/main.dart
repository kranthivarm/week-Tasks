import 'package:weektasks/FireBaseImagePicker/screens/EditProfileScreen.dart';
import 'package:weektasks/FireBaseImagePicker/screens/Profile.dart';
import 'package:weektasks/day1/widgets/homePage.dart';

import 'package:weektasks/day2/screens/day2HomePage.dart';


import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Day1homePage(),
      // home: Day2homepage(),
      home:Profile()
    );
  }
}