import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class WelcomeAndIntroPage extends StatefulWidget {
  @override
  _WelcomeAndIntroPageState createState() => _WelcomeAndIntroPageState();
}

class _WelcomeAndIntroPageState extends State<WelcomeAndIntroPage> {
  int page = 0;
  LiquidController liquidController;
  UpdateType updateType;

  final pages = [
    Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xFFffd500)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 76,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "To future of T-Shirts.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            )
          ],
        )),
    Container(
      color: Color(0xFF7400b8),
    ),
    Container(
      color: Color(0xFF48bfe3),
    ),
    Container(
      color: Color(0xFF06d6a0),
    ),
  ];

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LiquidSwipe(
          pages: pages,
          onPageChangeCallback: pageChangeCallback,
          waveType: WaveType.liquidReveal,
          liquidController: liquidController,
          ignoreUserGestureWhileAnimating: true,
          enableLoop: false,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                liquidController.animateToPage(
                    page: pages.length - 1, duration: 500);
              },
              child: Text(
                "Skip to End",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.white.withOpacity(0.01),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {
                liquidController.jumpToPage(
                    page: liquidController.currentPage + 1);
              },
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.white.withOpacity(0.01),
            ),
          ),
        )
      ],
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
