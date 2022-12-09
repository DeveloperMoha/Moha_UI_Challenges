import 'package:flutter/material.dart';
import 'package:moha_ui_challenges/challenges_modules/day3_challenge/day3_dummy_data.dart';
import 'package:moha_ui_challenges/challenges_modules/day3_challenge/day3_models.dart';

import '../../core/components/shared_widgets.dart';
import '../../core/utils/constants.dart';

class DayThreeSecondScreen extends StatefulWidget {
  const DayThreeSecondScreen({super.key});

  @override
  State<DayThreeSecondScreen> createState() => _DayThreeSecondScreenState();
}

class _DayThreeSecondScreenState extends State<DayThreeSecondScreen> {
  @override
  Widget build(BuildContext context) {
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
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Text('  back',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
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
            Expanded(
                child: Row(
              children: [
                Container(
                  width: 130,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                  ),
                  child: Container(
                      margin:
                          const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                      child: leftList(plants)),
                ),
                SharedWidgets.horizontalSpace(10.0),
                Expanded(
                    child: Container(
                  //color: Colors.green,
                  child: rightElement(plants),
                ))
              ],
            )),
            SharedWidgets.verticalSpace(30.0),
          ],
        ),
      ),
    );
  }

  Widget leftList(List<PlantElements> plants) {
    return ListView.builder(
        padding: const EdgeInsets.only(right: 0, top: 5, bottom: 5),
        itemCount: plants.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              color: (index == Day3Constants.selectedIndex)
                  ? const Color(0xff496e4d)
                  : Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
            ),
            child: IconButton(
              icon: Image.asset(plants[index].plantImg),
              iconSize: 80,
              onPressed: () {
                setState(() {
                  Day3Constants.selectedIndex = index;
                });
              },
            ),
          );
        });
  }

  Widget rightElement(List<PlantElements> plants) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 100),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  spreadRadius: -1,
                  blurRadius: 70,
                  offset: const Offset(-5, 5), // changes position of shadow
                ),
              ],
            ),
            child: Hero(
              tag: plants[Day3Constants.selectedIndex].plantTitle,
              transitionOnUserGestures: true,
              child: Image(
                image: AssetImage(
                  plants[Day3Constants.selectedIndex].plantImg,
                ),
                width: 300.0,
                height: 200.0,
              ),
            ),
          ),
          Text(
            plants[Day3Constants.selectedIndex].plantTitle,
            style: const TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w900,
              height: 1.1,
              letterSpacing: 2.0,
              color: Color(0xffc5e6b7),
              fontFamily: 'moha2',
            ),
          ),
          SharedWidgets.verticalSpace(10.0),
          Text(
            "\$ ${plants[Day3Constants.selectedIndex].plantPrice}",
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              height: 1.1,
              letterSpacing: 2.0,
              color: Color(0xffa2c092),
              fontFamily: 'moha2',
            ),
          ),
          SharedWidgets.verticalSpace(10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: const Color(0xffa0caa5),
                  width: 2,
                )),
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.remove_red_eye),
                    color: const Color(0xffa0caa5),
                    iconSize: 22.0,
                    onPressed: () {}),
              ),
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: const Color(0xffa0caa5),
                  width: 2,
                )),
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.liquor_rounded),
                    color: const Color(0xffa0caa5),
                    iconSize: 22.0,
                    onPressed: () {}),
              ),
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: const Color(0xffa0caa5),
                  width: 2,
                )),
                child: IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.face),
                    color: const Color(0xffa0caa5),
                    iconSize: 22.0,
                    onPressed: () {}),
              ),
            ],
          ),
          SharedWidgets.verticalSpace(10.0),
          Text(
            plants[Day3Constants.selectedIndex].plantDescription,
            style: const TextStyle(
              fontSize: 18.0,
              height: 1.1,
              letterSpacing: 1.1,
              color: Color(0xffa2c092),
              fontFamily: 'moha2',
            ),
          ),
        ],
      ),
    );
  }
}
