import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day4_challenge/shared_component.dart';
import 'package:moha_ui_challenges/core/components/shared_widgets.dart';

class DayFourSecondScreen extends StatelessWidget {
  final int cardId;
  const DayFourSecondScreen({super.key, required this.cardId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafbfd),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: Colors.deepPurple,
              image: DecorationImage(
                image: AssetImage(cardModel[cardId].cardImg),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 28.0,
                ),
              ),
            ),
          ),
          SharedWidgets.verticalSpace(15.0),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 15.0),
            child: Text(
              cardModel[cardId].cardTitle,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: Color(0xff2f3032),
                fontFamily: 'moha_ubunto',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 15.0),
            child: Text(
              "price : \$ ${cardModel[cardId].cardPrice}",
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
                color: Color(0xffc3a0a6),
                fontFamily: 'moha_ubunto',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              cardModel[cardId].cardDescription,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff6f7071),
                fontFamily: 'moha_ubunto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
