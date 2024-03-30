import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/WorkoutPages/SelectWorkout.dart';
import 'package:gymapp_uvexzon/WorkoutPages/StepPage.dart';
import 'package:gymapp_uvexzon/WorkoutPages/WorkoutView.dart';
import 'package:gymapp_uvexzon/paymentPage/paymentPage.dart';
import 'package:gymapp_uvexzon/signupLogin/loginpage.dart';
import 'package:gymapp_uvexzon/utills/colours.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uvexzon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: PageColors.primaryColor1,
          fontFamily: "Poppins"
      ),
      home: Payment(key: ValueKey('payment')),

    );
  }
}

