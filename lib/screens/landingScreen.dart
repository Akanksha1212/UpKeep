import 'package:flutter/material.dart';
import 'package:upkeep/screens/Login/signup.dart';

import '../util/data.dart';
import 'Login/login.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Data.getListings();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Image.asset('assets/images/logo.png'),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 300),
              child: Text(
                'Supporting Small Businesses Superbly',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogIn(),
                        ),
                      );
                    },
                    minWidth: 150.0,
                    height: 40.0,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    minWidth: 150.0,
                    height: 40.0,
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
