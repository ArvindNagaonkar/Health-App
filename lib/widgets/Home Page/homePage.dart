import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:health_app/widgets/Home Page/Status page/statusPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatusPage(),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55,
        items: <Widget>[
          Icon(
            Icons.timeline,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.mail,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      // body: Container(
      //   color: Colors.blueAccent,
      //   child: Center(
      //     child: Column(
      //       children: <Widget>[
      //         Text(_page.toString(), textScaleFactor: 10.0),
      //         RaisedButton(
      //           child: Text('Go To Page of index 1'),
      //           onPressed: () {
      //             final CurvedNavigationBarState navBarState =
      //                 _bottomNavigationKey.currentState;
      //             navBarState.setPage(1);
      //           },
      //         )
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}
