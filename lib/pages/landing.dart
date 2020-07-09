import 'package:flutter/material.dart';
import 'package:x/widget/button.dart';
import 'package:x/widget/first.dart';
import 'package:x/widget/forgot.dart';
import 'package:x/widget/inputEmail.dart';
import 'package:x/widget/password.dart';
import 'package:x/widget/welcome.dart';
import 'package:x/widget/welcome.dart';
import 'package:x/widget/verticalText.dart';

import 'login.page.dart';
import 'newuser.page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.deepOrange, Colors.white]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  //VerticalText(),
                  welcome(),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius:
                              10.0, // has the effect of softening the shadow
                          spreadRadius:
                              1.0, // has the effect of extending the shadow
                          offset: Offset(
                            5.0, // horizontal, move right 10
                            5.0, // vertical, move down 10
                          ),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 50, left: 50),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius:
                          10.0, // has the effect of softening the shadow
                          spreadRadius:
                          1.0, // has the effect of extending the shadow
                          offset: Offset(
                            5.0, // horizontal, move right 10
                            5.0, // vertical, move down 10
                          ),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewUser()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.account_circle,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
