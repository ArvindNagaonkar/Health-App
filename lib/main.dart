import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'widgets/Welcome_Intro Page/wel_and_intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  bool fisrtTime = false;
  bool connection = false;
  Connectivity connectivity;
  StreamSubscription<ConnectivityResult> subscription;

  @override
  void initState() {
    super.initState();
    connectivity = Connectivity();
    connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        setState(() {
          connection = true;
        });
      }
      if (result == ConnectivityResult.none) {
        setState(() {
          connection = false;
        });
      }
    });
    isFirstTime().then((isFirstTime) {
      if (isFirstTime) {
        fisrtTime = true;
      } else {
        fisrtTime = false;
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  Future<bool> isFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = prefs.getBool('first_time');

    if (firstTime != null && !firstTime) {
      // Not first time
      return false;
    } else {
      // First time
      prefs.setBool('first_time', false);
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeAndIntroPage(),
      //connection
      //     ? (fisrtTime ? WelcomeAndIntroPage() : HomePage())
      //     : NetworkError()
    );
  }
}
