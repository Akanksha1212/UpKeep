import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/logo.png',
                height: 600,
                width: 600,
                fit: BoxFit.contain,
              ),
            ),
          ],

        ),
      ),
    );
  }
}