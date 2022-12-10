import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day1_challenge/day1_view.dart';
import 'package:moha_ui_challenges/challenges_modules/day2_challenge/day2_view.dart';
import 'package:moha_ui_challenges/challenges_modules/day3_challenge/screen1_view.dart';
import 'package:moha_ui_challenges/challenges_modules/day3_challenge/screen2_view.dart';
import 'package:moha_ui_challenges/challenges_modules/day4_challenge/main_screen_view.dart';
import 'package:moha_ui_challenges/challenges_modules/day4_challenge/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const DayOneChallenge(),
      home: const DayFourWelcomeScreen(),
    );
  }
}
