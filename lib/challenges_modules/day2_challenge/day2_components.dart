import 'package:flutter/material.dart';

import '../../core/components/shared_widgets.dart';
import '../../core/utils/constants.dart';

class DayTwoComponents {
  Widget pageView1() {
    return Column(
      children: [
        Expanded(
            child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              stops: [0.1, 0.9],
              colors: [
                Color.fromARGB(133, 60, 219, 255),
                Color.fromARGB(113, 218, 10, 156),
              ],
            )),
            child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(Day2Constants.view1Cover),
                  fit: BoxFit.cover,
                )),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SharedWidgets.verticalSpace(10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Day2 Challenge",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontFamily: 'moha2',
                            ),
                          ),
                          Text(
                            "Dev Moha",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontFamily: 'moha2',
                            ),
                          ),
                        ],
                      ),
                      SharedWidgets.verticalSpace(150.0),
                      Text(
                        "Planet House",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[900],
                            fontFamily: 'moha',
                            letterSpacing: 5),
                      ),
                      SharedWidgets.verticalSpace(20.0),
                      Text(
                        "a planet you need to order it in your home that you dream it",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'moha2',
                            color: Colors.grey[300]),
                      ),
                      SharedWidgets.verticalSpace(60.0),
                      ElevatedButton(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: const Text(
                            "Swipe left for more",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                )),
          ),
        )),
      ],
    );
  }

  Widget pageView2(context) {
    return Column(
      children: [
        SharedWidgets.verticalSpace(20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 30.0,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(95, 60, 219, 255),
                          Color.fromARGB(60, 218, 10, 156),
                        ],
                      )),
                  child: IconButton(
                    icon: const Icon(
                      Icons.color_lens,
                      color: Color.fromARGB(255, 6, 219, 184),
                      size: 20.0,
                    ),
                    onPressed: () {},
                  ),
                ),
                SharedWidgets.horizontalSpace(20.0),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(95, 60, 219, 255),
                          Color.fromARGB(60, 218, 10, 156),
                        ],
                      )),
                  child: IconButton(
                    icon: const Icon(
                      Icons.shop,
                      color: Color.fromARGB(255, 201, 219, 6),
                      size: 20.0,
                    ),
                    onPressed: () {},
                  ),
                ),
                SharedWidgets.horizontalSpace(10.0),
              ],
            )
          ],
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome back ...!",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'moha2',
                ),
              ),
              SharedWidgets.verticalSpace(5.0),
              Text(
                "our planet will change your mind ",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800],
                  fontFamily: 'moha2',
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    width: 0.0,
                    height: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(95, 60, 219, 255),
                            Color.fromARGB(60, 218, 10, 156),
                          ],
                        )),
                    child: const Text(
                      "All Data ",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(95, 60, 219, 255),
                            Color.fromARGB(60, 218, 10, 156),
                          ],
                        )),
                    child: const Text(
                      "Indoor Data ",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(
                    width: 0.0,
                    height: 40.0,
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    width: 0.0,
                    height: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(95, 60, 219, 255),
                            Color.fromARGB(60, 218, 10, 156),
                          ],
                        )),
                    child: const Text(
                      "Outdoor Data ",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Explor indoor planet ..! ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'moha2',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "filters  ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                indoorPlanet(Day2Constants.plant1),
                indoorPlanet(Day2Constants.plant2),
                indoorPlanet(Day2Constants.plant3),
                indoorPlanet(Day2Constants.plant4),
                indoorPlanet(Day2Constants.plant5),
                indoorPlanet(Day2Constants.plant6),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Promotion more Outdoor planet ..! ",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'moha2',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.5, 0.1),
          child: SizedBox(
            width: double.infinity,
            height: 120.0,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  outdoorPlanet(Day2Constants.plant1),
                  outdoorPlanet(Day2Constants.plant2),
                  outdoorPlanet(Day2Constants.plant3),
                  outdoorPlanet(Day2Constants.plant4),
                  outdoorPlanet(Day2Constants.plant5),
                  outdoorPlanet(Day2Constants.plant6),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget indoorPlanet(image) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 1,
            child: Container(
              height: 180.0,
              width: 140.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromARGB(48, 60, 219, 255),
                      Color.fromARGB(42, 218, 10, 156),
                    ],
                  )),
            ),
          ),
          Positioned(
            top: 35,
            left: 30,
            child: Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 0,
            width: 120,
            height: 80,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 5,
            child: Container(
              width: 130,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Giant plant of paradise",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'moha2',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Giant plant love",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'moha2',
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "44.25 #",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: 'moha2',
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(2.0),
                                    backgroundColor:
                                        Color.fromARGB(155, 201, 201, 201)),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.monetization_on,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "3.5 s",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'moha2',
                                  color: Colors.grey[900],
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(2.0),
                                    backgroundColor:
                                        Color.fromARGB(155, 201, 201, 201)),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.heart_broken,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget outdoorPlanet(image) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 1,
            child: Container(
              height: 50.0,
              width: 380.0,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromARGB(48, 60, 219, 255),
                      Color.fromARGB(42, 218, 10, 156),
                    ],
                  )),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 0,
            width: 60,
            height: 60,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Positioned(
            top: 10,
            right: 5,
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Giant plant of paradise",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'moha2',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Giant plant love",
                          style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'moha2',
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "44.25 #",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'moha2',
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(2.0),
                                        backgroundColor:
                                            Color.fromARGB(155, 201, 201, 201)),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.dangerous_sharp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "3.5 s",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: 'moha2',
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(2.0),
                                        backgroundColor:
                                            Color.fromARGB(155, 201, 201, 201)),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.heart_broken,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
