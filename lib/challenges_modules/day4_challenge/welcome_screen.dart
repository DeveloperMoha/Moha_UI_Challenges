import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moha_ui_challenges/challenges_modules/day4_challenge/main_screen_view.dart';
import 'package:moha_ui_challenges/core/components/shared_widgets.dart';
import 'package:moha_ui_challenges/core/utils/constants.dart';

class DayFourWelcomeScreen extends StatelessWidget {
  const DayFourWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Day4Constants.welcome1),
          fit: BoxFit.cover,
        )),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.blue.withOpacity(0.05),
              Colors.white.withOpacity(0.3),
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Find, Collect and Create Your Best Designs.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontFamily: 'moha_ubunto',
                  ),
                ),
                SharedWidgets.verticalSpace(30.0),
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepOrange),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: const BorderSide(
                                  width: 2, color: Colors.white)))),
                  onPressed: () {
                    Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => DayFourMainScreen(),
                transitionDuration: const Duration(milliseconds: 200),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ),
            );
                  },
                  child:
                      const Text("Get Started", style: TextStyle(fontSize: 22)),
                ),
                SharedWidgets.verticalSpace(50.0),
                const Divider(
                  height: 1,
                  endIndent: 80.0,
                  indent: 80.0,
                  thickness: 2,
                  color: Colors.white,
                ),
                SharedWidgets.verticalSpace(30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
