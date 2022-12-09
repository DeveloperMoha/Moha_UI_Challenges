import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day3_challenge/screen2_view.dart';

import '../../core/components/shared_widgets.dart';
import '../../core/utils/constants.dart';
import 'day3_dummy_data.dart';
import 'day3_models.dart';

// 496e4d

class DayThreeFirstScreen extends StatefulWidget {
  const DayThreeFirstScreen({super.key});

  @override
  State<DayThreeFirstScreen> createState() => _DayThreeFirstScreenState();
}

class _DayThreeFirstScreenState extends State<DayThreeFirstScreen> {
  List<PlantElements> inDoorList = [];
  List<PlantElements> outDoorList = [];
  List<PlantElements> selectedList = plants;
  String listType = "all";

  @override
  Widget build(BuildContext context) {
    inDoorList = [];
    outDoorList = [];
    plants.forEach((element) {
      if (element.plantType == "indoor") {
        inDoorList.add(element);
      } else if (element.plantType == "outdoor") {
        outDoorList.add(element);
      }
    });
    if (listType == "all") {
      selectedList = plants;
    } else if (listType == "indoor") {
      selectedList = inDoorList;
    } else if (listType == "outdoor") {
      selectedList = outDoorList;
    }
    return Scaffold(
      backgroundColor: const Color(0xff496e4d),
      body: Container(
        padding: const EdgeInsets.only(bottom: 0.0, top: 10.0, right: 0),
        margin: const EdgeInsets.only(top: 20.0, bottom: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 5.0, bottom: 0, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Florest",
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontFamily: 'moha2',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: const Icon(Icons.search),
                          color: Colors.white,
                          iconSize: 22.0,
                          onPressed: () {}),
                      IconButton(
                          icon: const Icon(Icons.shop),
                          color: Colors.white,
                          iconSize: 22.0,
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
            SharedWidgets.verticalSpace(30.0),
            SizedBox(
              height: 250,
              child: Stack(
                children: const [
                  Positioned(
                    bottom: 20,
                    left: 45,
                    child: Text(
                      "Top \nPicks",
                      style: TextStyle(
                        fontSize: 44.0,
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 7.0,
                        color: Colors.white,
                        fontFamily: 'moha2',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 0,
                    child: Image(
                      image: AssetImage(Day3Constants.plant6),
                      width: 300.0,
                      height: 200.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 30.0,
                    decoration: const BoxDecoration(
                      color: Color(0xff496e4d),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(30.0)),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: (listType == "all")
                                ? Colors.grey[800]
                                : Colors.grey[500],
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            setState(() {
                              listType = "all";
                            });
                          },
                          child: const Text('ALL'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: (listType == "indoor")
                                ? Colors.grey[800]
                                : Colors.grey[500],
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            setState(() {
                              listType = "indoor";
                            });
                          },
                          child: const Text('In Door'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: (listType == "outdoor")
                                ? Colors.grey[800]
                                : Colors.grey[500],
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            setState(() {
                              listType = "outdoor";
                            });
                          },
                          child: const Text('Out Door'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: listViewElement(selectedList),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget listViewElement(List<PlantElements> plants) {
    return ListView.builder(
        padding: const EdgeInsets.only(right: 0, top: 5, bottom: 5),
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              setState(() {
                Day3Constants.selectedIndex = index;

                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const DayThreeSecondScreen(),
                    transitionDuration: const Duration(milliseconds: 400),
                    transitionsBuilder: (_, a, __, c) =>
                        FadeTransition(opacity: a, child: c),
                  ),
                );
              });
            },
            child: Container(
              height: 100.0,
              margin: const EdgeInsets.only(bottom: 10, right: 0),
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    right: 0,
                    child: Container(
                      height: 100.0,
                      width: 320.0,
                      decoration: const BoxDecoration(
                        color: Color(0xF2496e4d),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    plants[index].plantTitle,
                                    style: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      fontFamily: 'moha2',
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )),
                                      child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          icon:
                                              const Icon(Icons.remove_red_eye),
                                          color: Colors.white,
                                          iconSize: 22.0,
                                          onPressed: () {}),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )),
                                      child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          icon:
                                              const Icon(Icons.liquor_rounded),
                                          color: Colors.white,
                                          iconSize: 22.0,
                                          onPressed: () {}),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )),
                                      child: IconButton(
                                          padding: const EdgeInsets.all(0),
                                          icon: const Icon(Icons.face),
                                          color: Colors.white,
                                          iconSize: 22.0,
                                          onPressed: () {}),
                                    ),
                                    SharedWidgets.horizontalSpace(10.0),
                                    Text(
                                      "\$ ${plants[index].plantPrice}",
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1,
                                        letterSpacing: 2.0,
                                        color: Color(0xffa2c092),
                                        fontFamily: 'moha2',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                  icon: const Icon(Icons.add),
                                  color: Colors.black,
                                  iconSize: 18.0,
                                  onPressed: () {}),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: -15,
                            blurRadius: 20,
                            offset: const Offset(
                                -5, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Hero(
                        tag: plants[Day3Constants.selectedIndex].plantTitle,
                        transitionOnUserGestures: true,
                        child: Image(
                          image: AssetImage(
                            plants[index].plantImg,
                          ),
                          width: 80.0,
                          height: 80.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
