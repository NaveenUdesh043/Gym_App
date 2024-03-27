
import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/utills/colours.dart';
import 'package:gymapp_uvexzon/viewPages/on_boards/on_boarding_pages.dart';
import 'package:gymapp_uvexzon/viewPages/on_boards/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 3 in 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: PageColor.primaryColor1,
          fontFamily: "Poppins"
      ),
      home: OnBoardingPages(),
    );
  }
}

