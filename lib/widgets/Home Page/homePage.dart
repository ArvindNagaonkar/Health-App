import "package:flutter/material.dart";
import 'package:health_app/widgets/Home%20Page/local%20widgets/dataConatiners.dart';
import 'package:health_app/widgets/Home%20Page/local%20widgets/header.dart';
import 'local widgets/Chart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Header(
            headline: "You're healthy\nToday",
            key: Key("1234"),
          ),
          Positioned(
            top: size.height * 0.28,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    DataContainer(
                      headline: "Heart Rate",
                      data: "78",
                      dataColor: Color(0xFFeb596e),
                      unit: "Beats/min",
                      key: Key("value123"),
                    ),
                    DataContainer(
                      headline: "Body Temperature",
                      data: "28",
                      dataColor: Color(0xFF51c2d5),
                      unit: "Celsius",
                      key: Key("value567"),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.93,
                    child: LineChartGraph(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
