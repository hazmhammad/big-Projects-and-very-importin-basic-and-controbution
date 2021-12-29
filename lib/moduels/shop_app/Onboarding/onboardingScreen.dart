import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/moduels/shop_app/Login/LoginScreen.dart';
import 'package:flutter_application_logindesgin/shared/shared.component/component.dart';
import 'package:flutter_application_logindesgin/shared/shared.netword/shared.lacal/cache_helper.dart';
import 'package:flutter_application_logindesgin/style/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Boardingmodle {
  final String image;
  final String title;
  final String body;
  Boardingmodle({
    @required this.body,
    @required this.image,
    @required this.title,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boarController = PageController();

  List<Boardingmodle> boarding = [
    Boardingmodle(
        image: 'assets/images/onboard_1.png',
        title: 'On Board 1 Tile',
        body: 'On Board 1 Body'),
    Boardingmodle(
        image: 'assets/images/onboard_2.png',
        title: 'On Board 2 Tile',
        body: 'On Board 2 Body'),
    Boardingmodle(
        image: 'assets/images/onboard_3.png',
        title: 'On Board 3 Tile',
        body: 'On Board 3 Body'),
  ];

  bool islast = false;
  void submit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value) {
        navigateandFinish(context, ShopLoginScreen());
      }
    });
    navigateandFinish(context, ShopLoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            deflutTextboutton(function: submit, text: 'SKIP'),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  controller: boarController,
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        islast = true;
                      });
                      print("last");
                    } else {
                      setState(() {
                        islast = false;
                      });
                      print(" Not last");
                    }
                  },
                  itemBuilder: (context, index) =>
                      builderBoardingItems(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SmoothPageIndicator(
                    controller: boarController,
                    count: boarding.length,
                    effect: ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        dotHeight: 4,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5,
                        activeDotColor: deflaultColor),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    onPressed: () {
                      if (islast) {
                        submit();
                      } else {
                        boarController.nextPage(
                            duration: Duration(
                              milliseconds: 750,
                            ),
                            curve: Curves.fastLinearToSlowEaseIn);
                      }
                    },
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget builderBoardingItems(Boardingmodle modle) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image(image: AssetImage("${modle.image}"))),
          SizedBox(
            height: 30,
          ),
          Text(
            "${modle.title}",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "${modle.body}",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      );
}
