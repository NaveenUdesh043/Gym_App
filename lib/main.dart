import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/ProfilePages/AdminProfile.dart';
import 'package:gymapp_uvexzon/WorkoutPages/StepPage.dart';
import 'package:gymapp_uvexzon/signupLogin/DetailsPage.dart';
import 'package:gymapp_uvexzon/signupLogin/WelcomePage.dart';
import 'package:gymapp_uvexzon/utills/colours.dart';
import 'package:gymapp_uvexzon/viewPages/on_boards/on_boarding_pages.dart';


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
      home: const ExercisesStepDetails(eObj: {},),
    );
  }
}

