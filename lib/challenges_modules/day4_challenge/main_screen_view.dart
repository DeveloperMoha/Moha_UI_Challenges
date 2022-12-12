import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day4_challenge/shared_component.dart';
import 'package:moha_ui_challenges/core/components/shared_widgets.dart';

class DayFourMainScreen extends StatelessWidget {
  const DayFourMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> arts = [
      "All",
      "Popular",
      "Drop Price",
      "Old Price",
      "Another"
    ];

    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
            color: Color.fromARGB(255, 237, 237, 237),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SharedWidgets.verticalSpace(30.0),
                const Text(
                  "Live Auctions",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2a2a2c),
                    fontFamily: 'moha_ubunto',
                  ),
                ),
                SharedWidgets.verticalSpace(10.0),
                const Text(
                  "The Best Of Design On The Internet",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 176, 176, 176),
                    fontFamily: 'moha_ubunto',
                  ),
                ),
                SharedWidgets.verticalSpace(15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 280,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: -15,
                            blurRadius: 30,
                            offset: const Offset(
                                1, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 22.0,
                          ),
                          hintText: "Search Here .....",
                        ),
                      ),
                    ),
                    SharedWidgets.horizontalSpace(20.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: -15,
                            blurRadius: 30,
                            offset: const Offset(
                                1, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.sort),
                          color: Colors.white,
                          iconSize: 30.0,
                          onPressed: () {}),
                    ),
                  ],
                ),
                SharedWidgets.verticalSpace(10.0),
                SharedWidgets.verticalSpace(20.0),
                Container(height: 50, child: listViewElemen(arts)),
                SharedWidgets.verticalSpace(20.0),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 250,
                          child: cardListView(cardModel),
                        ),
                        SharedWidgets.verticalSpace(10.0),
                        const Text(
                          "Featured Components",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2a2a2c),
                            fontFamily: 'moha_ubunto',
                          ),
                        ),
                        SharedWidgets.verticalSpace(10.0),
                        SizedBox(height: 150, child: card2ListView(card2Model)),
                        SharedWidgets.verticalSpace(100.0),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(237, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: const Icon(Icons.home),
                      color: Colors.black,
                      iconSize: 30.0,
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.search),
                      color: Colors.black,
                      iconSize: 30.0,
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                      iconSize: 30.0,
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.heart_broken),
                      color: Colors.black,
                      iconSize: 30.0,
                      onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.person),
                      color: Colors.black,
                      iconSize: 30.0,
                      onPressed: () {}),
                ],
              )),
        )
      ],
    ));
  }
}


/*

*/