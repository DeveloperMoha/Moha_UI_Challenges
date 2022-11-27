import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day2_challenge/day2_components.dart';

class DayTwoChallenge extends StatelessWidget {
  const DayTwoChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          DayTwoComponents().pageView1(),
          DayTwoComponents().pageView2(context),
          Center(child: Text("hello 2")),
          Center(child: Text("hello 3")),
        ],
      ),
    );
  }
}
