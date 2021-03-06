import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upkeep/screens/bottomnavigation.dart';

import '../../schemas/users.dart';
import '../../util/auth.dart';

class SignUp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  double screenHeight;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          padding: const EdgeInsets.all(25.0),
          child: new SingleChildScrollView(
            child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child: new Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 40),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Register',
                        style: GoogleFonts.comfortaa(
                          textStyle: TextStyle(
                            color: Color(0xff324982),
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    new TextFormField(
                      controller: usernameController,
                      decoration: new InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Enter your Name",
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Name cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    new TextFormField(
                      controller: emailController,
                      decoration: new InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        labelText: "Enter your Email",
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    new TextFormField(
                      controller: passwordController,
                      decoration: new InputDecoration(
                        labelText: "Enter your Password",
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Password cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        labelText: "Confirm Password",
                        fillColor: Colors.white,
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Password don't match";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Auth auth = Auth();
                          Users users = Users(
                              usernameController.text.trim(),
                              emailController.text.trim(),
                              passwordController.text.trim());
                          auth.signUp(users).then((val) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavigation()));
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff2BAFD6), Color(0xff72EFB3)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width,
                                minHeight: 60.0),
                            alignment: Alignment.center,
                            child: Text(
                              'Sign up',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
