import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day4_challenge/second_screen_view.dart';
import 'package:moha_ui_challenges/core/utils/constants.dart';

import '../../core/components/shared_widgets.dart';

Widget listViewElemen(List<String> arts) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: arts.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff425259),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(10.0),
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
            child: Text(
              arts[index],
              style: TextStyle(color: Color(0xffffffff)),
            ),
          ),
        );
      });
}

Widget liveCard(price, image, title, description, id) {
  return AspectRatio(
    aspectRatio: 2.2 / 3,
    child: Container(
      height: 300,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Colors.red.withOpacity(0.2),
              Colors.green.withOpacity(0.3),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                  fontFamily: 'moha_ubunto',
                ),
              ),
              SharedWidgets.verticalSpace(5.0),
              Text(
                "${description.toString().substring(0, 70)} ..> show more",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w200,
                  color: Color.fromARGB(255, 234, 234, 234),
                  fontFamily: 'moha_ubunto',
                ),
              ),
              SharedWidgets.verticalSpace(5.0),
              Text(
                "\$ ${price}",
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: Color.fromARGB(123, 243, 243, 243),
                  fontFamily: 'moha_ubunto',
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class CardModel {
  final int cardId;
  final String cardImg;
  final String cardTitle;
  final String cardDescription;
  final int cardPrice;

  CardModel({
    required this.cardId,
    required this.cardImg,
    required this.cardTitle,
    required this.cardDescription,
    required this.cardPrice,
  });
}

List<CardModel> cardModel = [
  CardModel(
      cardId: 1,
      cardImg: Day4Constants.art1,
      cardTitle: "Woman Nature 1",
      cardDescription:
          "women1 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 20),
  CardModel(
      cardId: 2,
      cardImg: Day4Constants.art2,
      cardTitle: "Woman Nature 2",
      cardDescription:
          "women2 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 22),
  CardModel(
      cardId: 3,
      cardImg: Day4Constants.art3,
      cardTitle: "Woman Nature 3",
      cardDescription:
          "women3 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 23),
  CardModel(
      cardId: 4,
      cardImg: Day4Constants.art4,
      cardTitle: "Woman Nature 4",
      cardDescription:
          "women4 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 40),
  CardModel(
      cardId: 5,
      cardImg: Day4Constants.art5,
      cardTitle: "Woman Nature 5",
      cardDescription:
          "women5 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 55),
  CardModel(
      cardId: 6,
      cardImg: Day4Constants.art6,
      cardTitle: "Woman Nature 6",
      cardDescription:
          "women6 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 66),
  CardModel(
      cardId: 7,
      cardImg: Day4Constants.art7,
      cardTitle: "Woman Nature 7",
      cardDescription:
          "women7 nature in very amazing product that any woman can used it any time with low price ",
      cardPrice: 77),
];

Widget cardListView(List<CardModel> card) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(right: 0, top: 5, bottom: 5),
      itemCount: card.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (_, __, ___) => DayFourSecondScreen(
                  cardId: index,
                ),
                transitionDuration: const Duration(milliseconds: 200),
                transitionsBuilder: (_, a, __, c) =>
                    FadeTransition(opacity: a, child: c),
              ),
            );
          },
          child: liveCard(
              card[index].cardPrice.toString(),
              card[index].cardImg,
              card[index].cardTitle,
              card[index].cardDescription,
              card[index].cardId.toString()),
        );
      });
}

class Card2Model {
  final String cardImg;
  final String cardTitle;
  final String cardDescription;

  Card2Model({
    required this.cardImg,
    required this.cardTitle,
    required this.cardDescription,
  });
}

List<Card2Model> card2Model = [
  Card2Model(
    cardImg: AvatarImages.avatarMan1,
    cardTitle: "sameh moha",
    cardDescription: "software developer ",
  ),
  Card2Model(
    cardImg: AvatarImages.avatarMan2,
    cardTitle: "dalla mohamed",
    cardDescription: "data scientist ",
  ),
  Card2Model(
    cardImg: AvatarImages.avatarMan3,
    cardTitle: "sameh naguib",
    cardDescription: "QA officer ",
  ),
  Card2Model(
    cardImg: AvatarImages.avatarGirl1,
    cardTitle: "sara ahmed",
    cardDescription: "QA officer ",
  ),
  Card2Model(
    cardImg: AvatarImages.avatarGirl2,
    cardTitle: "aliaa ahmed",
    cardDescription: "QA officer ",
  ),
  Card2Model(
    cardImg: AvatarImages.avatarGirl3,
    cardTitle: "tota ahmed",
    cardDescription: "QA officer ",
  ),
];

Widget live2Card(image, title, description) {
  return AspectRatio(
    aspectRatio: 2.2 / 3,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[400],
        gradient: LinearGradient(
          colors: [
            Colors.blue.withOpacity(0.4),
            Colors.black.withOpacity(0.3),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Color(0xffffffff),
              fontFamily: 'moha_ubunto',
            ),
          ),
          SharedWidgets.verticalSpace(5.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11.0,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 234, 234, 234),
              fontFamily: 'moha_ubunto',
            ),
          ),
        ],
      ),
    ),
  );
}

Widget card2ListView(List<Card2Model> card) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(right: 0, top: 5, bottom: 5, left: 5),
      itemCount: card.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(
            right: 10,
          ),
          child: live2Card(card[index].cardImg, card[index].cardTitle,
              card[index].cardDescription),
        );
      });
}
