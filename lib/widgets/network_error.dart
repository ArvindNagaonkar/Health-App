import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class NetworkError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlareActor("assets/animations/network error.flr",
          alignment: Alignment.center, fit: BoxFit.contain, animation: "idle"),
    );
  }
}
