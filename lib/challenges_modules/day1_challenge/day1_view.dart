import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moha_ui_challenges/core/components/shared_widgets.dart';
import 'package:moha_ui_challenges/core/utils/constants.dart';

class DayOneChallenge extends StatelessWidget {
  const DayOneChallenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.white,
          elevation: 0.4,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Text(
            "Day1 Challenge By Moha",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[800],
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(5.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SharedWidgets.verticalSpace(20.0),
                        const Text(
                          "Find Your ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w300),
                        ),
                        SharedWidgets.verticalSpace(10.0),
                        const Text(
                          "Amazing Passion ",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.w900),
                        ),
                        SharedWidgets.verticalSpace(20.0),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 22.0,
                              ),
                              hintText: "Searching Here By Love .....",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SharedWidgets.verticalSpace(20.0),
                        const Text(
                          "Today Badgets .. ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        SharedWidgets.verticalSpace(15.0),
                        SizedBox(
                          height: 200.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              promoCard(Day1Constants.promoImage1),
                              promoCard(Day1Constants.promoImage2),
                              promoCard(Day1Constants.promoImage3),
                              promoCard(Day1Constants.promoImage4),
                              promoCard(Day1Constants.promoImage5),
                              promoCard(Day1Constants.promoImage6),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SharedWidgets.verticalSpace(20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Day1Constants.boxCover),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            colors: [
                              Colors.red.withOpacity(0.4),
                              Colors.black.withOpacity(0.1),
                            ],
                          )),
                      child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Best User",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SharedWidgets.verticalSpace(20.0),
                        const Text(
                          "Tomorrow Badgets .. ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        SharedWidgets.verticalSpace(15.0),
                        SizedBox(
                          height: 200.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              promoCard(Day1Constants.promoImage4),
                              promoCard(Day1Constants.promoImage3),
                              promoCard(Day1Constants.promoImage2),
                              promoCard(Day1Constants.promoImage1),
                              promoCard(Day1Constants.promoImage5),
                              promoCard(Day1Constants.promoImage6),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SharedWidgets.verticalSpace(20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Day1Constants.boxCover),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          gradient: LinearGradient(
                            colors: [
                              Colors.red.withOpacity(0.4),
                              Colors.black.withOpacity(0.1),
                            ],
                          )),
                      child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Best User",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.4 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.1),
                ],
              )),
          child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "hello User",
              )),
        ),
      ),
    );
  }
}
