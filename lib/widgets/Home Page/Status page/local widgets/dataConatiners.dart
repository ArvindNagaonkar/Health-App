import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  final Color dataColor;
  final String headline;
  final String data;
  final String unit;
  const DataContainer(
      {Key key, this.dataColor, this.headline, this.data, this.unit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.45,
        height: size.height * 0.26,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30,
                  color: Color(0xFFB7B7B7).withOpacity(.16))
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                headline,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data,
                style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    color: dataColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                unit,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
